using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace 问卷调查.Util
{
    public static class ValidationHelper
    {
        public static string GenerateValidationCode(this string source, int units)
        {
            Random _rand = new Random(); //随机类
            string _result = "";
            for (int i = 0; i < units; i++) //循环6次，生成6位数字，10位就循环10次
            {
                _result += source[_rand.Next(source.Length - 1)]; //通过索引下标随机

            }

            return _result;
        }
    }
}
