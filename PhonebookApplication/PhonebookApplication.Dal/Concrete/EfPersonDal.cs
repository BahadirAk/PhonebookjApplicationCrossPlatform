using PhonebookApplication.Dal.Abstract;
using PhonebookApplication.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PhonebookApplication.Dal.Concrete
{
    public class EfPersonDal : IPersonDal
    {
        private PhonebookApplicationContext _context;
        public EfPersonDal(PhonebookApplicationContext context)
        {
            _context = context;
        }
        public void Add(Person person)
        {
            _context.Add(person);
            _context.SaveChanges();
        }

        public void Delete(int personId)
        {
            _context.People.Remove(_context.People.FirstOrDefault(p => p.PersonId == personId));
            _context.SaveChanges();
        }

        public List<Person> GetAll()
        {
            var result = _context.People.ToList();
            return result;
        }
        public Person GetById(int id)
        {
            var result = _context.People.Find(id);
            return result;
        }
        public void Update(Person person)
        {
            var result = _context.People.Find(person.PersonId);
            result.PersonName = person.PersonName;
            result.PersonSurname = person.PersonSurname;
            result.TelephoneNumber = person.TelephoneNumber;
            result.Notes = person.Notes;
            _context.SaveChanges();
        }
    }
}
