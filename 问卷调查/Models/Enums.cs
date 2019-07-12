using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace 问卷调查.Models
{
    public static class Enums
    {
        public enum Type
        {
            成人 = 1,
            儿童 = 2,
            孕妇 = 3
        }

        public static string ToEnumsString(this Type type)
        {
            return "xxx";
        }
    }
}
