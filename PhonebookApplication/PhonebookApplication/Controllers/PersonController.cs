using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using PhonebookApplication.Entities;
using PhonebookApplication.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PhonebookApplication.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PersonController : ControllerBase
    {
        private IPersonService _personService;
        public PersonController(IPersonService personService)
        {
            _personService = personService;
        }
        [HttpPost]
        public IActionResult Add([FromBody] Person data)
        {
            if (data == null)
            {
                return BadRequest();
            }
            else
            {
                _personService.Add(data);
                return Ok(data);
            }
        }
        [HttpPut("{id}")]
        public IActionResult Update(int id, [FromBody] Person data)
        {
            if (data == null)
            {
                return BadRequest();
            }
            else
            {
                _personService.GetById(id);
                _personService.Update(data);
                return Ok(data);
            }
        }
        [HttpGet]
        public IActionResult GetAll()
        {
            List<Person> datas = _personService.GetAll();
            return Ok(datas);
        }
        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _personService.Delete(id);
            return Ok();
        }
    }
}
