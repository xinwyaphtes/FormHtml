using SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace 问卷调查.Models
{
    public class Patient
    {
        [SugarColumn(IsPrimaryKey = true, IsIdentity = true)]
        public int Id { get; set; }
        public string Name { get; set; }
        public string VisitID { get; set; }
        public int Type { get; set; }
        public string Company { get; set; }
        public string Department { get; set; }
        public string EmployeeNo { get; set; }
        public string Birthday { get; set; }
        public string Description { get; set; }
    }
}
