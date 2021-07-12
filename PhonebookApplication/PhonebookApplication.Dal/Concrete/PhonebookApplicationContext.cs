using Microsoft.EntityFrameworkCore;
using PhonebookApplication.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace PhonebookApplication.Dal.Concrete
{
    public class PhonebookApplicationContext : DbContext
    {
        public PhonebookApplicationContext(DbContextOptions<PhonebookApplicationContext> options) : base(options)
        {

        }
        public DbSet<Person> People { get; set; }
    }
}
