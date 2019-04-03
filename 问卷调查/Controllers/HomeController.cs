using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using 问卷调查.Models;
using 问卷调查.Util;

namespace 问卷调查.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            using (var db = DBHelp.QueryDB())
            {
                var t = db.Queryable<Template>().Where(x => x.Status).ToList();

                return View(t);
            }
        }

        public IActionResult SearchPatientForm(string visitId, int pageNum, int pagesize = 10)
        {
            using (var db = DBHelp.QueryDB())
            {
                var m = db.Queryable<Main>().Where(x => x.VisitID == visitId && !x.IsDeleted).ToList();
                ViewBag.RecordsCount = m.Count;
                if (pageNum == 0)
                {
                    m = m.OrderByDescending(x => x.UpdateDT).Take(pagesize).ToList();
                }
                else
                {
                    m = m.OrderByDescending(x => x.UpdateDT).Skip((pageNum - 1) * pagesize).Take(pagesize).ToList();
                }

                return PartialView("PatientFormList", m);
            }
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
