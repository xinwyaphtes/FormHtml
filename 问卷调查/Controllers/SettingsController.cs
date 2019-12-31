using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using 问卷调查.Models;
using 问卷调查.Util;

namespace 问卷调查.Controllers
{
    public class SettingsController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public string GetFormHtml(int id)
        {
            try
            {
                // 创建一个 StreamReader 的实例来读取文件 
                // using 语句也能关闭 StreamReader
                using (var db = new DBHelp().Instance)
                {
                    var t = db.Queryable<Template>().InSingle(id);

                    if (t != null)
                    {
                        using (StreamReader sr = new StreamReader(t.Path))
                        {
                            string htmlStr = "";
                            string line;
                            // 从文件读取并显示行，直到文件的末尾 
                            while ((line = sr.ReadLine()) != null)
                            {
                                htmlStr += line;
                            }

                            return htmlStr;
                        }
                    }
                    else
                    {
                        return "文件不存在";
                    }
                }
            }
            catch (Exception e)
            {
                // 向用户显示出错消息
                //return e.Message;
                return $"错误：{e}";
            }
        }

        [HttpPost]
        public void SaveBindDataFormHtml(string name, string source)
        {
            StreamWriter sw = new StreamWriter("./Template/" + name);
            sw.Write(source);
            sw.Close();
        }

        [HttpPost]
        public JsonResult SaveHtml(string htmlstr, string name)
        {
            try
            {
                StreamReader sr = new StreamReader("./Template/" + name + ".html");
                return new JsonResult("文件已存在");
            }
            catch (Exception e)
            {
                StreamWriter sw = new StreamWriter("./Template/" + name + ".html");
                sw.Write(htmlstr);
                sw.Close();
                return new JsonResult("创建成功");
            }
        }

        [HttpPost]
        public void AddPatient(string visitId, string name, string birthday, int sex, int Type,string Company,string Department,string EmployeeNo)
        {
            var p = new Patient
            {
                Name = name,
                Birthday = birthday,
                Sex = sex,
                Type = (Enums.Type)Type,
                VisitID = visitId,
                Company = Company,
                Department = Department,
                EmployeeNo=EmployeeNo,
                
            };

            using (var db = new DBHelp().Instance)
            {
                var singlePat = db.Queryable<Patient>().First(x => x.VisitID == visitId);

                if (singlePat != null)
                {
                    p.Id = singlePat.Id;
                    db.Updateable(p).ExecuteCommand();
                }
                else
                {
                    db.Insertable(p).ExecuteCommand();
                }
            }
        }
    }
}