using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace 问卷调查.Controllers
{
    public class MobileYiQingController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}