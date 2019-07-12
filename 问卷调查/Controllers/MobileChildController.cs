using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace 问卷调查.Controllers
{
    public class MobileChildController : Controller
    {
        public IActionResult Index()
        {
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
                case 1: return PartialView("/Template/量表---儿童基本情况.html");
                case 2: return PartialView("/Template/量表---儿童PSQ睡眠问卷.html");
                case 3: return PartialView("/Template/量表---儿童OSA-18睡眠问卷.html");
                case 4: return PartialView("/Template/量表---儿童睡眠习惯问卷.html");
                case 5: return PartialView("/Template/量表---儿童行为问卷.html");
                default:
                    return PartialView("");
            }
        }
    }
}