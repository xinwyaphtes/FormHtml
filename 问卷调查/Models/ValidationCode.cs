using SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace 问卷调查.Models
{
    public class ValidationCode
    {
        [SugarColumn(IsPrimaryKey = true)]
        public string IP { get; set; }
        public string Code { get; set; }
        /// <summary>
        /// 0 第一次生成，未使用
        /// </summary>
        public int Status { get; set; }
        public string Description { get; set; }
        public DateTime CreateDT { get; set; }
        /// <summary>
        /// 过期时间 60s
        /// </summary>
        public int EscapeTime { get; set; }

    }
}
