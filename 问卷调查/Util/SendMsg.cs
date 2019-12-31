using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TencentCloud.Common;
using TencentCloud.Sms.V20190711;
using TencentCloud.Sms.V20190711.Models;

namespace 问卷调查.Util
{
    public static class SendMsg
    {
        public static SendSmsResponse GetSms(string telNo,out string rnum)
        {
            Random myrnd = new Random();
            rnum = myrnd.Next(1000, 9999).ToString();
            Credential cred = new Credential
            {
                SecretId = "AKIDjJgv62PKcjaDf469uRpFVG9zhGhfkRdj",
                SecretKey = "1nMgR0Qoyta7QQL3e06xc6MNCuMflfKn"
            };
            SmsClient client = new SmsClient(cred, null);
            SendSmsRequest req = new SendSmsRequest
            {
                PhoneNumberSet = new string[] { "+86" + telNo },
                TemplateID = "508043",
                SmsSdkAppid = "1400298308",
                TemplateParamSet = new string[] { rnum },
                Sign = "上海东方耳鼻喉研究所"
            };

            SendSmsResponse result = client.SendSms(req).ConfigureAwait(false).GetAwaiter().GetResult();

            return result;
        }
    }
}
