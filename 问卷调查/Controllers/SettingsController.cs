using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace 问卷调查.Controllers
{
    public class SettingsController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public string GetFormHtml()
        {
            try
            {
                // 创建一个 StreamReader 的实例来读取文件 
                // using 语句也能关闭 StreamReader
                using (StreamReader sr = new StreamReader("./Template/简易智能精神状态量表（MMSE）.html"))
                {
                    string htmlStr="";
                    string line;
                    // 从文件读取并显示行，直到文件的末尾 
                    while ((line = sr.ReadLine()) != null)
                    {
                        htmlStr += line;
                    }

                    return htmlStr;
                }
            }
            catch (Exception e)
            {
                // 向用户显示出错消息
                //return e.Message;
                return "文件不存在";
            }
        }
    }
}