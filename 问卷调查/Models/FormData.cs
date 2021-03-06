﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using SqlSugar;

namespace 问卷调查.Models
{
    public class FormData
    {
        [SugarColumn(IsPrimaryKey = true, IsIdentity = true)]
        public int Id { get; set; }
        public string MainGuid { get; set; }

        public string ParentIndex { get; set; }
        public string ParentDesc { get; set; }
        public string ParentGroup { get; set; }

        public string DataSign { get; set; }
        public string Attribution  { get; set; }
        public string ItemDesc  { get; set; }
        public string ItemValue  { get; set; }
    }
}
