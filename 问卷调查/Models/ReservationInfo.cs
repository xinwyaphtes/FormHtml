using SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace 问卷调查.Models
{
    public class ReservationInfo
    {
        [SugarColumn(IsPrimaryKey = true, IsIdentity = true)]
        public int ID { get; set; }
        public string Name { get; set; }
        public string School { get; set; }
        public string IDCard { get; set; }
        public string Telephone { get; set; }
        public int IsReservation { get; set; }
        public DateTime ReservationDT { get; set; }
    }
}
