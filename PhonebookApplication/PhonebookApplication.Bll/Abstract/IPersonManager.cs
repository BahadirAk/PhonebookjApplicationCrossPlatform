using PhonebookApplication.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace PhonebookApplication.Bll.Abstract
{
    public interface IPersonManager
    {
        List<Person> GetAll();
        public Person GetById(int id);
        void Add(Person person);
        void Delete(int personId);
        void Update(Person person);
    }
}
