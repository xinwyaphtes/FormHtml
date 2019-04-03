using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using SqlSugar;

namespace 问卷调查.Models
{
    public class Main
    {
        [SugarColumn(IsPrimaryKey = true, IsIdentity = true)]
        public int Id { get; set; }
        public string Guid { get; set; }
        public string VisitID { get; set; }
        public string Name { get; set; }
        public int TemplateId { get; set; }
        public DateTime? CreateDT { get; set; }
        public DateTime? UpdateDT { get; set; }
        public string Result { get; set; }
        public bool IsDeleted { get; set; }
    }
}
