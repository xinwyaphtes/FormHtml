using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using 问卷调查.Models;
using 问卷调查.Util;

namespace 问卷调查.Controllers
{
    public class ReservationController : Controller
    {
        private readonly IHttpContextAccessor httpContextAccessor;
        public ReservationController(IHttpContextAccessor httpContextAccessor)
        {
            this.httpContextAccessor = httpContextAccessor;
        }

        public IActionResult Index()
        {
            return View();
        }

        public JsonResult GetValidationCode()
        {
            string ip = httpContextAccessor.HttpContext.Connection.RemoteIpAddress.ToString();
            string source = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
            string code = source.GenerateValidationCode(4);

            using (var db = DBHelp.QueryDB())
            {
                var validation = new ValidationCode
                {
                    IP = ip,
                    Code = code,
                    CreateDT = DateTime.Now,
                    Description = "验证码",
                    Status = 0,
                    EscapeTime = 60
                };

                db.Saveable(validation).ExecuteCommand();
            }

            return new JsonResult(new { value = code });
        }

        public JsonResult VerifyValidationCode(string code)
        {
            string ip = httpContextAccessor.HttpContext.Connection.RemoteIpAddress.ToString();
            string result = null;

            using (var db = DBHelp.QueryDB())
            {
                var validation = new ValidationCode
                {
                    IP = ip,
                    Code = code,
                    CreateDT = DateTime.Now,
                    Description = "验证码",
                    Status = 0,
                    EscapeTime = 60
                };

                var temp = db.Queryable<ValidationCode>().Where(x => x.IP == ip && x.Status == 0 && x.Code == code);

                if (temp.Any())
                {
                    result = "SUCCESS";
                }
                else
                {
                    result = "FALSE";
                }
                temp.Context.Deleteable<ValidationCode>().ExecuteCommand();
            }

            return new JsonResult(new { msg = result });
        }

        public JsonResult SaveInfo(ReservationInfo info)
        {
            int code;
            string message;
            using (var db = DBHelp.QueryDB())
            {
                try
                {
                    var temp = db.Queryable<ReservationInfo>().ToList();
                    //查询是否存在
                    var existTemp = temp.Where(x => x.IDCard == info.IDCard);
                    //查询是否已预约满
                    var alltemp = temp.Where(x => x.ReservationDT >= DateTime.Parse(info.ReservationDT.ToShortDateString()) && x.ReservationDT < DateTime.Parse(info.ReservationDT.AddDays(1).ToShortDateString())).Count();

                    if (existTemp.Any())
                    {
                        code = 0;
                        message = "预约信息已存在，请勿重复预约！";
                    }
                    else if (alltemp >= 8)
                    {
                        code = 0;
                        message = "当日预约已满，请预约其它日期！";
                    }
                    else
                    {
                        info.IsReservation = 1;
                        db.Insertable(info).ExecuteCommand();
                        code = 1;
                        message = "";
                    }
                }
                catch (Exception e)
                {
                    code = -1;
                    message = "预约失败。";
                }
            }

            return new JsonResult(new { code = code, message = message });
        }

        public JsonResult GetCount()
        {
            using (var db = DBHelp.QueryDB())
            {
                var infolist = db.Queryable<ReservationInfo>().Where(x => x.ReservationDT > DateTime.Now.AddDays(-31)).ToList();

                var group = infolist.GroupBy(x => x.ReservationDT.ToString("yyyy-MM-dd"));

                Dictionary<string, int> result = new Dictionary<string, int>();
                foreach (var item in group)
                {
                    result.Add(item.Key, item.Count());
                }

                return new JsonResult(result);
            }
        }
    }
}