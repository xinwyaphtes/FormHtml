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

        public bool GetValidationCode(string telNo)
        {
            //检查手机号 如果已经使用过，就不给验证码
            //如果存在未使用的号码，看是否在有效时间内，如果在就不给验证码，不在就删除这条记录，重新生成验证码

            using (var db = new DBHelp().Instance)
            {
                var bookinfo = db.Queryable<ReservationInfo>().Where(x => x.Telephone == telNo);
                var codeExpired = db.Queryable<ValidationCode>().Where(x => x.TelePhoneNum == telNo && x.CreateDT.AddSeconds(x.EscapeTime) > DateTime.Now);
                if (bookinfo.Any() || codeExpired.Any()) { return false; }
                else
                {
                    string code;
                    try
                    {
                        //生成code
                        var sendResponse = Util.SendMsg.GetSms(telNo, out code);
                        if (!string.IsNullOrEmpty(code))
                        {
                            var validation = new ValidationCode
                            {
                                TelePhoneNum = telNo,
                                Code = code,
                                CreateDT = DateTime.Now,
                                Description = "验证码",
                                Status = 0,
                                EscapeTime = 60
                            };

                            db.Deleteable<ValidationCode>().Where(x => x.TelePhoneNum == telNo).ExecuteCommand();
                            db.Saveable(validation).ExecuteCommand();
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                    catch (Exception)
                    {
                        return false;
                    }
                }
            }
        }

        public JsonResult VerifyValidationCode(string telNo, string code)
        {
            string result = null;

            using (var db = new DBHelp().Instance)
            {
                var validation = new ValidationCode
                {
                    TelePhoneNum = telNo,
                    Code = code,
                    CreateDT = DateTime.Now,
                    Description = "验证码",
                    Status = 0,
                    EscapeTime = 60
                };

                var temp = db.Queryable<ValidationCode>().Where(x => x.TelePhoneNum == telNo && x.Status == 0 && x.Code == code);

                if (temp.Any())
                {
                    result = "SUCCESS";
                    temp.Context.Deleteable<ValidationCode>().ExecuteCommand();
                }
                else
                {
                    result = "FALSE";
                }

            }

            return new JsonResult(new { msg = result });
        }

        [HttpPost]
        public IActionResult SaveInfo(ReservationInfo info)
        {
            int code;
            string message;
            using (var db = new DBHelp().Instance)
            {
                try
                {
                    var temp = db.Queryable<ReservationInfo>().ToList();
                    //查询是否存在
                    var existTemp = temp.Where(x => x.IDCard == info.IDCard && x.ReservationDT.AddDays(7) > info.ReservationDT);
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
                        info.CreateDT = DateTime.Now;
                        db.Insertable(info).ExecuteCommand();
                        code = 1;
                        message = "预约成功！";
                    }
                }
                catch (Exception e)
                {
                    code = -1;
                    message = "预约失败。" + e;
                }
            }

            return View("BookingResult", new { code = code, message = message });
        }

        public JsonResult GetCount()
        {
            using (var db = new DBHelp().Instance)
            {
                var infolist = db.Queryable<ReservationInfo>().Where(x => x.ReservationDT > DateTime.Now.AddDays(-31) && x.IsReservation == 1).ToList();

                var group = infolist.GroupBy(x => x.ReservationDT.ToString("yyyy-MM-dd"));

                Dictionary<string, int> result = new Dictionary<string, int>();
                foreach (var item in group)
                {
                    result.Add(item.Key, item.Count());
                }

                return new JsonResult(result);
            }
        }

        public JsonResult GetBookingDetail(string tele)
        {
            using (var db = new DBHelp().Instance)
            {
                var ReservationInfo = db.Queryable<ReservationInfo>().Where(x => x.Telephone == tele);
                if (ReservationInfo.Any())
                {
                    return new JsonResult(new { code = 0, data = ReservationInfo.First() });
                }
                else
                {
                    return new JsonResult(new { code = 1 });
                }
            }
        }

        [HttpPost]
        public void Cancel(string tel)
        {
            using (var db = new DBHelp().Instance)
            {
                db.Updateable<ReservationInfo>().UpdateColumns(it => new ReservationInfo { IsReservation = 0 }).Where(x => x.Telephone == tel).ExecuteCommand();
            }
        }

        public bool checkVisit(string name, string birthday)
        {
            using (var db = new DBHelp().Instance)
            {
                var visit = db.Queryable<Patient>().Where(x => x.Name == name && x.Birthday == birthday);
                if (!visit.Any())
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
        }
    }
}