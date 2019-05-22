using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using SqlSugar;

namespace 问卷调查.Models
{
    public class Template
    {
        [SugarColumn(IsPrimaryKey = true, IsIdentity = true)]
        public int Id { get; set; }

        public string Name { get; set; }
        public string Path { get; set; }
        public bool Status { get; set; }
        public DateTime CreateDT { get; set; }
        public DateTime UpdateDT { get; set; }
        public int type { get; set; }
        public int PrintOrder { get; set; }
    }
}
