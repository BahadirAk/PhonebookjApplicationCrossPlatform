using PhonebookApplication.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace PhonebookApplication.Interfaces
{
    public interface IPersonService
    {
        List<Person> GetAll();
        public Person GetById(int id);
        void Add(Person person);
        void Delete(int personId);
        void Update(Person person);
    }
}
