using PhonebookApplication.Bll.Abstract;
using PhonebookApplication.Dal.Concrete;
using PhonebookApplication.Entities;
using PhonebookApplication.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;

namespace PhonebookApplication.ServiceLayer.Concrete
{
    public class PersonService : IPersonService
    {
        private IPersonManager _personManager;
        public PersonService(IPersonManager personManager)
        {
            _personManager = personManager;
        }
        public void Add(Person person)
        {
            _personManager.Add(person);
        }

        public void Delete(int personId)
        {
            _personManager.Delete(personId);
        }

        public List<Person> GetAll()
        
        {
            return _personManager.GetAll();
        }
        public Person GetById(int id)
        {
            return _personManager.GetById(id);
        }

        public void Update(Person person)
        {
            _personManager.Update(person);
        }
    }
}
