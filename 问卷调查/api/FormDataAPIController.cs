using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using 问卷调查.Models;
using 问卷调查.Util;

namespace 问卷调查.api
{
    [Route("api/[controller]")]
    [ApiController]
    public class FormDataAPIController : ControllerBase
    {
        [HttpGet]
        public List<FormData> Get(string guid)
        {
            using (var db = DBHelp.QueryDB())
            {
                return db.Queryable<FormData>().Where(x => x.MainGuid == guid).ToList();
            }
        }
    }
}