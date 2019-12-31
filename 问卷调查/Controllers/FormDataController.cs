using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using 问卷调查.Models;
using 问卷调查.Util;
using Microsoft.AspNetCore.Http;
using System.Diagnostics;
using Microsoft.Extensions.Caching.Memory;

namespace 问卷调查.Controllers
{
    public class FormDataController : Controller
    {
        [HttpPost]
        public IActionResult SaveBindData(string visitID, string name, int templateId, int key, string data, string dataResult)
        {
            using (var db = new DBHelp().Instance)
            {
                var jsonData = Newtonsoft.Json.JsonConvert.DeserializeObject<List<FormData>>(data);

                var m = db.Queryable<Main>().InSingle(key);
                if (m == null)
                {
                    string g = Guid.NewGuid().ToString("D"); ;
                    m = new Main
                    {
                        Guid = g,
                        Name = name,
                        TemplateId = templateId,
                        VisitID = visitID,
                        Result = dataResult,
                        CreateDT = DateTime.Now,
                        UpdateDT = DateTime.Now
                    };
                    jsonData.ForEach(x => { x.MainGuid = g; });
                    db.Insertable(m).ExecuteCommand();
                }
                else
                {
                    m.UpdateDT = DateTime.Now;
                    m.Result = dataResult;
                    jsonData.ForEach(x => { x.MainGuid = m.Guid; });
                    db.Updateable(m).UpdateColumns(x => new { x.UpdateDT, x.Result }).ExecuteCommand();
                    db.Deleteable<FormData>().Where(x => x.MainGuid == m.Guid).ExecuteCommand();
                }

                if (data.Any())
                {
                    db.Insertable(jsonData).ExecuteCommand();
                }

                return RedirectToAction("SearchPatientForm", "Home", new { visitID });
            }
        }

        [HttpPost]
        public void SaveChildData(Patient childInfo, string data)
        {
            using (var db = new DBHelp().Instance)
            {
                var jsonData = Newtonsoft.Json.JsonConvert.DeserializeObject<List<FormData>>(data);

                //string p = Guid.NewGuid().ToString("D");
                //childInfo.VisitID = p;
                db.Insertable(childInfo).ExecuteCommand();

                string g = Guid.NewGuid().ToString("D");
                var m = new Main
                {
                    Guid = g,
                    Name = "儿童睡眠及学习行为能力调查",
                    //TemplateId = templateId,
                    VisitID = childInfo.VisitID,
                    //Result = dataResult,
                    CreateDT = DateTime.Now,
                    UpdateDT = DateTime.Now
                };
                jsonData.ForEach(x => { x.MainGuid = g; });
                db.Insertable(m).ExecuteCommand();
                db.Insertable(jsonData).ExecuteCommand();
            }
        }

        [HttpPost]
        public void SavePregnantData(Patient pregnantInfo, string data)
        {
            using (var db = new DBHelp().Instance)
            {
                var jsonData = Newtonsoft.Json.JsonConvert.DeserializeObject<List<FormData>>(data);

                string p = Guid.NewGuid().ToString("D");
                pregnantInfo.VisitID = p;
                db.Insertable(pregnantInfo).ExecuteCommand();

                string g = Guid.NewGuid().ToString("D");
                var m = new Main
                {
                    Guid = g,
                    Name = "孕妇问卷",
                    //TemplateId = templateId,
                    VisitID = p,
                    //Result = dataResult,
                    CreateDT = DateTime.Now,
                    UpdateDT = DateTime.Now
                };
                jsonData.ForEach(x => { x.MainGuid = g; });
                db.Insertable(m).ExecuteCommand();
                db.Insertable(jsonData).ExecuteCommand();
            }
        }

        public IActionResult Del(int id, int pageNum)
        {
            using (var db = new DBHelp().Instance)
            {
                var m = db.Queryable<Main>().InSingle(id);
                if (m != null)
                {
                    m.IsDeleted = true;
                    db.Updateable(m).UpdateColumns(x => new { x.IsDeleted }).ExecuteCommand();
                    return RedirectToAction("SearchPatientForm", "Home", new { m.VisitID, pageNum });
                }
                else
                {
                    return null;
                }
            }
        }

        public void Delitem(int id)
        {
            using (var db = new DBHelp().Instance)
            {
                var m = db.Queryable<Main>().InSingle(id);
                if (m != null)
                {
                    db.Deleteable(m).ExecuteCommand();
                }
            }
        }

        public JsonResult Edit(int id)
        {
            try
            {
                var user = HttpContext.Session.GetString("user");
                // 创建一个 StreamReader 的实例来读取文件 
                // using 语句也能关闭 StreamReader
                using (var db = new DBHelp().Instance)
                {
                    var t = db.Queryable<Main>().InSingle(id);

                    if (t != null)
                    {
                        var template = db.Queryable<Template>().First(x => x.Id == t.TemplateId);
                        using (StreamReader sr = new StreamReader(template.Path))
                        {
                            string htmlStr = "";
                            string line;
                            // 从文件读取并显示行，直到文件的末尾 
                            while ((line = sr.ReadLine()) != null)
                            {
                                htmlStr += line;
                            }

                            var data = db.Queryable<FormData>().Where(x => x.MainGuid == t.Guid).ToList();

                            HtmlFormContent c = new HtmlFormContent
                            {
                                FormData = data,
                                Source = htmlStr,
                                Result = t.Result,
                                VisitId = t.VisitID,
                                HasAuthority = !(user == "admin")
                            };

                            return new JsonResult(c);
                        }
                    }
                    else
                    {
                        return new JsonResult("数据不存在");
                    }
                }
            }
            catch (Exception e)
            {
                // 向用户显示出错消息
                //return e.Message;
                return new JsonResult($"错误：{e}");
            }
        }

        [HttpPost]
        public string SyncPatient()
        {
            try
            {
                Process p = new Process();
                //设置要启动的应用程序
                var appSettingsJson = AppSettingsJson.GetAppSettings();
                var processpath = appSettingsJson["syncpatientapppath"];//admin12345
                p.StartInfo.FileName = processpath;
                //是否使用操作系统shell启动
                p.StartInfo.UseShellExecute = false;
                // 接受来自调用程序的输入信息
                p.StartInfo.RedirectStandardInput = true;
                //输出信息
                p.StartInfo.RedirectStandardOutput = true;
                // 输出错误
                p.StartInfo.RedirectStandardError = true;
                //不显示程序窗口
                p.StartInfo.CreateNoWindow = false;
                //启动程序
                p.Start();
                p.StandardInput.AutoFlush = true;
                //等待程序执行完退出进程
                p.WaitForExit();
                p.Close();
                return "同步成功";
            }
            catch (Exception)
            {

                return "同步失败";
            }
        }

        [HttpPost]
        public string LoadCache(string phone, string childInfo, string tableData)
        {
            var result = _cache.Get("tableData");
            if (result == null || result.ToString() == "")
            {
                _cache.Set(phone + "_1", tableData);
            }
            //_cache.Remove("key");
            return result.ToString(); ;
        }

        private IMemoryCache _cache;
        public FormDataController(IMemoryCache memoryCache)
        {
            _cache = memoryCache;
        }
    }
}