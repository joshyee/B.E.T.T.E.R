using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace B.E.T.T.E.R
{
    public class Character
    {
        public string titanName;
        public int userId;
        public int elementId;
        public int experience;
        public bool active;
        public string imagePath;
        public DateTime dateCreated;

        public static int TotalCharacters;
    }
}