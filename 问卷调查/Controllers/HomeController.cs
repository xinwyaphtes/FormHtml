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

        public IActionResult SearchPatientForm(string visitId)
        {
            using (var db = DBHelp.QueryDB())
            {
                var m = db.Queryable<Main>().Where(x => x.VisitID == visitId).ToList();

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
