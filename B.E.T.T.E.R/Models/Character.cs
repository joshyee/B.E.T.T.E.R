using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace B.E.T.T.E.R
{
    public class Character
    {
        public string titanName { get; set;}
        public int userId { get; set; }
        public int elementId { get; set; }
        public int experience { get; set; }
        public bool active { get; set; }
        public string imagePath { get; set; }
        public DateTime dateCreated { get; set; }
        public int wins { get; set; }
        public int losses { get; set; }
    }
}