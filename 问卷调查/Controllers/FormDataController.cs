using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using 问卷调查.Models;
using 问卷调查.Util;

namespace 问卷调查.Controllers
{
    public class FormDataController : Controller
    {
        public void SaveBindData(string visitID, string name, int templateId, int key, List<FormData> data)
        {
            using (var db = DBHelp.QueryDB())
            {
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
                        CreateDT = DateTime.Now,
                        UpdateDT = DateTime.Now
                    };
                    data.ForEach(x => { x.MainGuid = g; });

                    db.Insertable(m).ExecuteCommand();
                    db.Insertable(data).ExecuteCommand();
                }
                else
                {
                    data.ForEach(x => { x.MainGuid = m.Guid; });
                    db.Deleteable<FormData>().Where(x => x.MainGuid == m.Guid).ExecuteCommand();
                    db.Insertable(data).ExecuteCommand();
                }
            }
        }

        public JsonResult Edit(int id)
        {
            try
            {
                // 创建一个 StreamReader 的实例来读取文件 
                // using 语句也能关闭 StreamReader
                using (var db = DBHelp.QueryDB())
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
                                Source = htmlStr
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
    }
}