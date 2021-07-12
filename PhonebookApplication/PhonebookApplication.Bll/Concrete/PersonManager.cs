using PhonebookApplication.Bll.Abstract;
using PhonebookApplication.Dal.Abstract;
using PhonebookApplication.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace PhonebookApplication.Bll.Concrete
{
    public class PersonManager : IPersonManager
    {
        private IPersonDal _personDal;
        public PersonManager(IPersonDal personDal)
        {
            _personDal = personDal; 
        }
        public void Add(Person person)
        {
            _personDal.Add(person);
        }

        public void Delete(int personId)
        {
            _personDal.Delete(personId);
        }

        public List<Person> GetAll()
        {
            return _personDal.GetAll();
        }
        public Person GetById(int id)
        {
            return _personDal.GetById(id);
        }

        public void Update(Person person)
        {
            _personDal.Update(person);
        }
    }
}
