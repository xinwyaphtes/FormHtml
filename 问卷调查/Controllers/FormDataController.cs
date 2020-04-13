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
using System.Data;
using SqlSugar;
using System.Text.RegularExpressions;
using System.Text;
using Microsoft.AspNetCore.Hosting;

namespace 问卷调查.Controllers
{
    public enum School
    {
        第一小学 = 1,
        第二小学 = 2,
    }
    public enum Grade
    {
        一年级 = 1,
        二年级 = 2,
    }
    public enum GradeClass
    {
        一班 = 1,
        二班 = 2
    }
    public class DicItemOptions
    {
        [SugarColumn(IsPrimaryKey = true, IsIdentity = true)]
        public int Id { get; set; }
        public int MainId { get; set; }
        public int ItemId { get; set; }
        public string MainName { get; set; }
        public string Name { get; set; }
        public string ItemPrintOrder { get; set; }
        public string OptionPrintOrder { get; set; }
        public string OptionName { get; set; }
        public string HTMLType { get; set; }
        public string DomType { get; set; }
        public string ExtendContent { get; set; }
        public string GroupName { get; set; }
        public string PageNum { get; set; }
        public bool IsSingleSelect { get; set; }
    }
    public class FormDataController : Controller
    {
        public JsonResult GetHtmlDataByDic(string name)
        {
            using (var db = new DBHelp().Instance)
            {
                var tableMain = db.Ado.GetDataTable("select shortName, Description,unicode from DicMain where name=N'" + name + "'");

                var data = new List<object> { };
                StreamReader sr = new StreamReader(AppContext.BaseDirectory + "/Views/MobileYiQing/知情同意书.txt", Encoding.Default);
                data.Add(new { html = sr.ReadToEnd(), show = true });
                sr = new StreamReader(AppContext.BaseDirectory + "/Views/MobileYiQing/调查信息.txt", Encoding.Default);
                data.Add(new { html = sr.ReadToEnd(), show = false });
                sr.Close();
                //根据表单循环，解决存在多个问卷组合的情况
                for (int k = 0; k < tableMain.Rows.Count; k++)
                {
                    var maincode = tableMain.Rows[k]["unicode"].ToString();
                    var shortName = tableMain.Rows[k]["shortName"].ToString();
                    var itemOptions = db.SqlQueryable<DicItemOptions>("select d.Name,d.PageNum,d.GroupName,ItemId,DomType,o.name as OptionName,ExtendContent,d.PrintOrder as ItemPrintOrder,d.[IsSingle] as IsSingleSelect,o.PrintOrder as OptionPrintOrder from DicItem d , DicOptions o where d.id=o.ItemId and d.maincode='" + maincode + "'");
                    var temphtml = "";

                    //根据页码分组，获取一页里面显示多少内容
                    foreach (var pagesItem in itemOptions.ToList().Where(x => x.ItemPrintOrder != "0").GroupBy(x => x.PageNum))
                    {
                        foreach (var items in pagesItem.GroupBy(x => x.ItemId))
                        {
                            temphtml += "<p class='title'>" + items.First().Name + "</p>";
                            temphtml += "<div style='display: flex;" + (items.Any(x => !string.IsNullOrEmpty(x.ExtendContent) || items.Count() > 4) ? "flex-flow:column" : "") + "'>";
                            ConvertKuoHao(maincode, items.First().ItemPrintOrder, ref temphtml);

                            foreach (var item in items)
                            {
                                if (string.IsNullOrEmpty(item.DomType))
                                {
                                    temphtml += "<div>" + item.OptionName + item.ExtendContent + "</div>";
                                    ConvertKuoHao(maincode, items.First().ItemPrintOrder + "_" + item.OptionPrintOrder, ref temphtml);
                                }
                                else
                                {
                                    temphtml += "<div style='flex:1'><input class='formdata " + (items.First().IsSingleSelect ? "single" : "mult") + "' id='" + maincode + "_" + item.ItemPrintOrder + "_" + item.OptionPrintOrder + "' type='" + item.DomType + "'/>" + item.OptionName + item.ExtendContent + "</div>";
                                    ConvertKuoHao(maincode, items.First().ItemPrintOrder + "_" + item.OptionPrintOrder, ref temphtml);
                                }
                            }
                            temphtml += "</div>";
                        };
                        //每一页的内容拼接后放入对象
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.Append(temphtml);
                        stringBuilder.Insert(0, "<p><h3>" + shortName + "</h3></p>" + "<p><h4>" + pagesItem.First().GroupName + "</h4></p>");
                        data.Add(new { html = stringBuilder.ToString(), show = false }); temphtml = "";
                    }

                }
                return new JsonResult(data);
            }
        }
        private void ConvertKuoHao(string name, string order, ref string html)
        {
            //输入框
            var matchs = Regex.Matches(html, @"(?<=\{)[^}]*(?=\})", RegexOptions.IgnoreCase);
            for (int i = 0; i < matchs.Count; i++)
            {
                string repstring = "";
                switch (matchs[i].Value)
                {
                    //case "number": repstring = "<input class='formdata' type='number' id = '" + name + "_" + order + "[" + (i + 1) + "]" + "' min='{min}' max='{max}'/> "; break;
                    case "input":
                        repstring = "<input class='formdata' id = '" + name + "_" + order + "[" + (i + 1) + "]" + "' /> "; break;
                    case "checkbox":
                        repstring = "<input class='formdata' type='checkbox' id = '" + name + "_" + order + "[" + (i + 1) + "]" + "' /> "; break;
                    case "school":
                        repstring = "<select class='formdata' id = '" + name + "_" + order + "[" + (i + 1) + "]" + "' >" + "<option value = ''>请选择...</option>";
                        foreach (var item in EnumsNET.Enums.GetNames<School>())
                        {
                            repstring += ("<option>" + item + "</option>");
                        }
                        repstring += "</select>";
                        break;
                    case "grade":
                        repstring = "<select class='formdata' id = '" + name + "_" + order + "[" + (i + 1) + "]" + "' >" + "<option value = ''>请选择...</option>";
                        foreach (var item in EnumsNET.Enums.GetNames<Grade>())
                        {
                            repstring += ("<option>" + item + "</option>");
                        }
                        repstring += "</select>";
                        break;
                    case "class":
                        repstring = "<select class='formdata' id = '" + name + "_" + order + "[" + (i + 1) + "]" + "' >" + "<option value = ''>请选择...</option>";
                        foreach (var item in EnumsNET.Enums.GetNames<GradeClass>())
                        {
                            repstring += ("<option>" + item + "</option>");
                        }
                        repstring += "</select>";
                        break;
                    case "date":
                        repstring = "<input class='formdata' type='date' id = '" + name + "_" + order + "[" + (i + 1) + "]" + "' /> "; break;
                }
                if (repstring != "")
                {
                    Regex r = new Regex("{" + matchs[i].Value + "}");
                    html = r.Replace(html, repstring, 1);
                }
            }
            //下拉框
            matchs = Regex.Matches(html, @"(?<=\{\[)[^}]*(?=\]\})", RegexOptions.IgnoreCase);
            for (int i = 0; i < matchs.Count; i++)
            {
                Regex r = new Regex(@"\{\[" + matchs[i].Value + @"\]\}");
                var options = matchs[i].Value.Split('/');
                var repstring = "<select onchange='setDefaultValue(this);' class='formdata' id = '" + name + "_" + order + "[" + (i + 1) + "]" + "'>" + "<option value = ''>请选择...</option>" + "<option>" + string.Join("</option><option>", options) + "</option>" + "</select>";
                html = r.Replace(html, repstring, 1);
            }
            //数字控件(默认整数，支持小数)
            matchs = Regex.Matches(html, @"(?<=\{number\[)[^}]*(?=\]\})", RegexOptions.IgnoreCase);
            for (int i = 0; i < matchs.Count; i++)
            {
                Regex r = new Regex(@"\{number\[" + matchs[i].Value + @"\]\}");
                var range = matchs[i].Value.Replace("number", "").Split(',');
                var repstring = "<input class='formdata' type='number'" + (range[0] == "true" ? " pattern='[0 - 9]*'" : "") + " id = '" + name + "_" + order + "[" + (i + 1) + "]" + "' min='" + range[1] + "' max='" + range[2] + "'/>";
                html = r.Replace(html, repstring, 1);
            }
        }

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


        [HttpPost]
        public void SaveYiQingData(Patient childInfo, string data)
        {
            using (var db = new DBHelp().Instance)
            {
                var jsonData = Newtonsoft.Json.JsonConvert.DeserializeObject<List<FormData>>(data);

                string p = Guid.NewGuid().ToString("D");
                //childInfo.VisitID = p;
                db.Updateable(childInfo).UpdateColumns(s => new { s.Department, s.Birthday, s.Description }).WhereColumns(it => new { it.Name, it.Company });
                db.Updateable(childInfo).ExecuteCommand();

                string g = Guid.NewGuid().ToString("D");
                var m = new Main
                {
                    Guid = g,
                    Name = "儿童睡眠及学习行为能力的调查",
                    VisitID = p,
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

        public string ChildInfo(string name, string school)
        {
            using (var db = new DBHelp().Instance)
            {
                var child = db.Queryable<Patient>().Where(x => x.Name == name && x.Company == school);

                if (child.Any()) return "true"; else return "";
            }
        }
    }
}