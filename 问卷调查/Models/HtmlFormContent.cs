using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace 问卷调查.Models
{
    public class HtmlFormContent
    {
        public string Source { get; set; }
        public List<FormData> FormData { get; set; }
        public string Result { get; set; }
    }
}
