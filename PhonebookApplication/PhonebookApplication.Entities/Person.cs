using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace PhonebookApplication.Entities
{
    public class Person
    {
        [Key]
        public int PersonId { get; set; }
        [Required]
        public string PersonName { get; set; }
        public string PersonSurname { get; set; }
        public string TelephoneNumber { get; set; }
        [MaxLength(50)]
        public string Notes { get; set; }
    }
}
