using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using 问卷调查.Models;
using 问卷调查.Util;

namespace 问卷调查.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            //using (var db = DBHelp.QueryDB())
            //{
            //    var t = db.Queryable<Template>().Where(x => x.Status).ToList();

            //    return View(t);
            //}
            return View();
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
                var t = db.Queryable<Patient>().Select(x => new { name = x.Name, visitId = x.VisitID }).ToList();

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

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
