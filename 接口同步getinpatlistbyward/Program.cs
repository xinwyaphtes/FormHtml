using SqlSugar;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace ConsoleApp1
{
    class Program
    {
        [Obsolete]
        static void Main(string[] args)
        {
            ServiceReference1.IsvInterfaceSoapClient s = new ConsoleApp1.ServiceReference1.IsvInterfaceSoapClient();
            //P214.1 门诊 P214.2 急诊 P214.3 住院 P214.4 体检

            string requestStr = "<Msg><Head><Code>GetInPatientListByWard</Code><CTID>2017120900000055</CTID><IsvID>meehealth</IsvID><AppID>wjInterface</AppID><SubmitTime>" + DateTime.Now.ToString("yyyyMMddHHmmss")+ "</SubmitTime><Version>1</Version><Priority>10</Priority></Head><Body><HospID>42502652100</HospID><WardNO>@deptno</WardNO><IsShow>0</IsShow><jzlx>2</jzlx></Body></Msg>";

            string[] deptnos = ConfigurationSettings.AppSettings["deptno"].Split(',');
            //string fromdt = ConfigurationSettings.AppSettings["fromdt"];
            string conn = ConfigurationSettings.AppSettings["conn"];
            //if (string.IsNullOrEmpty(fromdt)) fromdt = DateTime.Now.ToString("yyyy-MM-dd")
 ;
            //string enddt = DateTime.Now.AddDays(1).ToString("yyyy-MM-dd");
            List<Patient> patientlist = new List<Patient>();

            foreach (string dept in deptnos)
            {
                string req = requestStr.Replace("@deptno", dept);

                var result = s.IsvInterfaceXmlString(req);
                byte[] array = Encoding.UTF8.GetBytes(result);
                MemoryStream stream = new MemoryStream(array);
                XmlDocument doc = new XmlDocument();
                doc.Load(stream);

                XmlNodeList xn0 = doc.SelectNodes("Msg/Body/PatientList/PatientInfo");
                if (xn0 != null)
                {
                    DateTime defaulttime = DateTime.MinValue;
                    foreach (XmlNode item in xn0)
                    {
                        DateTime.TryParse(item.SelectSingleNode("csrq").InnerText, out defaulttime);
                        var now = DateTime.Now;
                        int age = now.Year - defaulttime.Year;
                        if (now.Month < defaulttime.Month || (now.Month == defaulttime.Month && now.Day < defaulttime.Day)) age--;

                        Patient p = new Patient
                        {
                            Name = item.SelectSingleNode("hzxm").InnerText,
                            Type = age < 16 ? 2 : 1,
                            Nation = item.SelectSingleNode("mcmc").InnerText,
                            Citizen = item.SelectSingleNode("gjmc").InnerText,
                            Birthday = defaulttime,
                            VisitID = item.SelectSingleNode("jzlsh").InnerText,
                            Sex = item.SelectSingleNode("sex").InnerText == null ? 1 : item.SelectSingleNode("sex").InnerText.Trim() == "男" ? 1 : 2,
                            TelPhoneNo = item.SelectSingleNode("lxdh").InnerText,
                            Marriage = item.SelectSingleNode("hymc").InnerText,
                            Height = item.SelectSingleNode("sg").InnerText,
                            Weight = item.SelectSingleNode("tz").InnerText,
                        };
                        patientlist.Add(p);
                    }
                }
            }
            //插入更新
            SqlSugarClient db = new SqlSugarClient(
    new ConnectionConfig()
    {
        ConnectionString = conn,
        DbType = DbType.SqlServer,//设置数据库类型
        IsAutoCloseConnection = true,//自动释放数据务，如果存在事务，在事务结束后释放
        InitKeyType = InitKeyType.Attribute //从实体特性中读取主键自增列信息
    });
            patientlist.ForEach(x =>
            {
                var temp = db.Queryable<Patient>().Where(y => y.VisitID == x.VisitID);
                if (temp.Any())
                {
                    x.Id = temp.First().Id;
                }
            });

            db.Saveable(patientlist).ExecuteReturnEntity();
        }
    }

    class Patient
    {
        [SugarColumn(IsIdentity = true, IsPrimaryKey = true)]
        public int Id { get; set; }
        public string Name { get; set; }
        public string VisitID { get; set; }

        public int Type { get; set; }

        public string Company { get; set; }

        public string Department { get; set; }

        public string EmployeeNo { get; set; }

        public int Sex { get; set; }

        public DateTime Birthday { get; set; }

        public string Description { get; set; }

        public string Nation { get; set; }

        public string Citizen { get; set; }

        public string TelPhoneNo { get; set; }

        public string Marriage { get; set; }
        public string Height { get; set; }
        public string Weight { get; set; }
    }
}
