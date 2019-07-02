using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace 问卷调查.Models
{
    public class HistoryData
    {
        public int Id { get; set; }
        public DateTime UpdateDT { get; set; }
        public string Name { get; set; }
        public string EmployeeNo { get; set; }
    }
}
