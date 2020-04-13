using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace StringSplit
{
    public class Split
    {
        [Microsoft.SqlServer.Server.SqlFunction]
        public static SqlString SplitByIndex(string str, int index)
        {

            var strlist = str.Split('_');
            var matchs = Regex.Matches(strlist[index], @"(?<=\[)[^}]*(?=\])", RegexOptions.IgnoreCase);
            if (matchs.Count > 0)
            {
matchs[0].Value
            }
            else
            {
                return strlist[index];
            }
        }
    }
}
