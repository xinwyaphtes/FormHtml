using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using SqlSugar;
using 问卷调查.Models;
using 问卷调查.Util;

namespace 问卷调查.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index(string username, string pwd, bool logout = false)
        {
            if (logout || string.IsNullOrEmpty(username))
            {
                HttpContext.Session.SetString("user", "");
            }
            else
            {
                MD5CryptoServiceProvider md5Hasher = new MD5CryptoServiceProvider();
                byte[] data = md5Hasher.ComputeHash(Encoding.Default.GetBytes(username + '-' + pwd));
                StringBuilder sBuilder = new StringBuilder();
                for (int i = 0; i < data.Length; i++)
                {
                    sBuilder.Append(data[i].ToString("x2"));
                }
                var appSettingsJson = AppSettingsJson.GetAppSettings();
                var userpwd = appSettingsJson["userpwd"];//admin12345

                if (userpwd == sBuilder.ToString())
                {
                    HttpContext.Session.SetString("user", "admin");
                    ViewBag.Username = "管理员";
                }
                else
                {
                    ViewBag.ErrorMsg = "用户名密码错误";
                }
            }

            return View();
        }

        public IActionResult IndexShowId()
        {
            return View();
        }

        public IActionResult ShowPage(int id)
        {
            switch (id)
            {
                case 1: return PartialView("/Template/量表---基本信息.html");
                case 2: return PartialView("/Template/量表---匹兹堡睡眠问卷.html");
                case 3: return PartialView("/Template/量表---Epworth嗜睡.html");
                case 4: return PartialView("/Template/量表---SF-36健康调查简表.html");
                case 5: return PartialView("/Template/量表---简易智能精神状态（MMSE）.html");
                case 6: return PartialView("/Template/量表---MoCA.html");
                default:
                    return PartialView("/Template/量表---基本信息.html");
            }
        }

        [HttpGet]
        public IActionResult GetFormList()
        {
            using (var db = DBHelp.QueryDB())
            {
                var t = db.Queryable<Template>().Where(x => x.Status).ToList();

                return PartialView("NewForm", t);
            }
        }

        [HttpGet]
        public IActionResult GetPatientInfo(string visitID)
        {
            using (var db = DBHelp.QueryDB())
            {
                var t = db.Queryable<Patient>().First(x => x.VisitID == visitID);

                return PartialView("PatientInfo", t);
            }
        }

        [HttpGet]
        public string GetPatientList()
        {
            using (var db = DBHelp.QueryDB())
            {
                var t = db.Queryable<Patient>().Where(x => x.Type != Enums.Type.孕妇).OrderBy(x => x.Type).Select(x => new { name = x.Name, visitId = x.VisitID }).ToList();

                return JsonConvert.SerializeObject(new { value = t });
            }
        }

        public IActionResult SearchPatientForm(string visitId)
        {
            using (var db = DBHelp.QueryDB())
            {
                var m = db.Queryable<Main>().Where(x => x.VisitID == visitId && !x.IsDeleted).ToList();
                ViewBag.RecordsCount = m.Count;

                return PartialView("MainList", m);
            }
        }

        public IActionResult HistoryForm(string cardNo, string name)
        {
            using (var db = DBHelp.QueryDB())
            {
                var list = db.Queryable<Main, Patient>((st, sc) => new object[] {
        JoinType.Inner,st.VisitID==sc.VisitID})
      .Select((st, sc) => new { st.Id, st.UpdateDT, sc.Name, sc.EmployeeNo }).MergeTable().WhereIF(!string.IsNullOrEmpty(cardNo), it => it.EmployeeNo == cardNo)
        .WhereIF(!string.IsNullOrEmpty(name), it => it.Name == name).OrderBy(st => st.UpdateDT, OrderByType.Desc).Take(10).ToList();

                List<HistoryData> hflist = new List<HistoryData>();

                foreach (var item in list)
                {
                    HistoryData hf = new HistoryData
                    {
                        Id = item.Id,
                        EmployeeNo = item.EmployeeNo,
                        Name = item.Name,
                        UpdateDT = (DateTime)item.UpdateDT
                    };

                    hflist.Add(hf);
                }

                return View(hflist);
            }
        }

        public JsonResult ShowHisDataById(int id)
        {
            using (var db = DBHelp.QueryDB())
            {
                var history = db.SqlQueryable<FormData>("select FormData.* from Main,FormData where Main.Guid = FormData.MainGuid and Main.Id = " + id.ToString()).ToList();

                return new JsonResult(history);
            }
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        [HttpPost]
        public void AddDic(List<Dim_Element> dataList)
        {
            using (var db = DBHelp.QueryDB())
            {
                db.Insertable(dataList).ExecuteCommand();
            }
        }
    }
}
