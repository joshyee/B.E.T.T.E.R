using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace B.E.T.T.E.R
{
    public class CharacterDataAccess
    {
        public List<Character> getCharacters()
        {
            List<Character> characterList = new List<Character>();
            
            if (HttpContext.Current.Session["fireTitan"] != null)
            { 
                Character fireTitan = new Character();
                fireTitan.titanName = Convert.ToString(HttpContext.Current.Session["fireTitanName"]);
                fireTitan.userId = Convert.ToInt32(HttpContext.Current.Session["fireTitanUserId"]);
                fireTitan.elementId = Convert.ToInt32(HttpContext.Current.Session["fireTitanElementId"]);
                fireTitan.experience = Convert.ToInt32(HttpContext.Current.Session["fireTitanExperience"]);
                fireTitan.active = Convert.ToBoolean(HttpContext.Current.Session["fireTitanActive"]);
                fireTitan.imagePath = Convert.ToString(HttpContext.Current.Session["fireTitanImagePath"]);
                fireTitan.dateCreated = Convert.ToDateTime(HttpContext.Current.Session["fireTitanDateCreated"]);

                characterList.Add(fireTitan);
            }

            if (HttpContext.Current.Session["airTitan"] != null)
            {
                Character airTitan = new Character();
                airTitan.titanName = Convert.ToString(HttpContext.Current.Session["airTitanName"]);
                airTitan.userId = Convert.ToInt32(HttpContext.Current.Session["airTitanUserId"]);
                airTitan.elementId = Convert.ToInt32(HttpContext.Current.Session["airTitanElementId"]);
                airTitan.experience = Convert.ToInt32(HttpContext.Current.Session["airTitanExperience"]);
                airTitan.active = Convert.ToBoolean(HttpContext.Current.Session["airTitanActive"]);
                airTitan.imagePath = Convert.ToString(HttpContext.Current.Session["airTitanImagePath"]);
                airTitan.dateCreated = Convert.ToDateTime(HttpContext.Current.Session["airTitanDateCreated"]);

                characterList.Add(airTitan);
            }

            if (HttpContext.Current.Session["earthTitan"] != null)
            {
                Character earthTitan = new Character();
                earthTitan.titanName = Convert.ToString(HttpContext.Current.Session["earthTitanName"]);
                earthTitan.userId = Convert.ToInt32(HttpContext.Current.Session["earthTitanUserId"]);
                earthTitan.elementId = Convert.ToInt32(HttpContext.Current.Session["earthTitanElementId"]);
                earthTitan.experience = Convert.ToInt32(HttpContext.Current.Session["earthTitanExperience"]);
                earthTitan.active = Convert.ToBoolean(HttpContext.Current.Session["earthTitanActive"]);
                earthTitan.imagePath = Convert.ToString(HttpContext.Current.Session["earthTitanImagePath"]);
                earthTitan.dateCreated = Convert.ToDateTime(HttpContext.Current.Session["earthTitanDateCreated"]);

                characterList.Add(earthTitan);
            }

            if (HttpContext.Current.Session["waterTitan"] != null)
            {
                Character waterTitan = new Character();
                waterTitan.titanName = Convert.ToString(HttpContext.Current.Session["waterTitanName"]);
                waterTitan.userId = Convert.ToInt32(HttpContext.Current.Session["waterTitanUserId"]);
                waterTitan.elementId = Convert.ToInt32(HttpContext.Current.Session["waterTitanElementId"]);
                waterTitan.experience = Convert.ToInt32(HttpContext.Current.Session["waterTitanExperience"]);
                waterTitan.active = Convert.ToBoolean(HttpContext.Current.Session["waterTitanActive"]);
                waterTitan.imagePath = Convert.ToString(HttpContext.Current.Session["waterTitanImagePath"]);
                waterTitan.dateCreated = Convert.ToDateTime(HttpContext.Current.Session["waterTitanDateCreated"]);

                characterList.Add(waterTitan);
            }
            
            return characterList;

        }

        public List<Character> getHOFCharacters()
        {
            var today = DateTime.Today;
            var month = new DateTime(today.Year, today.Month, 1);
            var first = month.AddMonths(-1);
            var last = month.AddDays(-1);

            List<Character> HOFcharacterList = new List<Character>();
            
            Character fireTitan = new Character();
            fireTitan.titanName = "Hephaestus";
            fireTitan.userId = 3;
            fireTitan.elementId = 1;
            fireTitan.experience = 11501;
            fireTitan.active = false;
            fireTitan.imagePath = "http://localhost:14854/Images/fire.png";
            fireTitan.dateCreated = last;
            fireTitan.wins = 17;
            fireTitan.losses = 6;

            HOFcharacterList.Add(fireTitan);
            

           
            Character airTitan = new Character();
            airTitan.titanName = "Anemoi";
            airTitan.userId = 4;
            airTitan.elementId = 2;
            airTitan.experience = 11501;
            airTitan.active = false;
            airTitan.imagePath = "http://localhost:14854/Images/air.png";
            airTitan.dateCreated = last;
            airTitan.wins = 19;
            airTitan.losses = 4;

            HOFcharacterList.Add(airTitan);
            

            
            Character earthTitan = new Character();
            earthTitan.titanName = "Terra";
            earthTitan.userId = 4;
            earthTitan.elementId = 3;
            earthTitan.experience = 11501;
            earthTitan.active = false;
            earthTitan.imagePath = "http://localhost:14854/Images/earth.png";
            earthTitan.dateCreated = last;
            earthTitan.wins = 14;
            earthTitan.losses = 12;

            HOFcharacterList.Add(earthTitan);
            

           
            Character waterTitan = new Character();
            waterTitan.titanName = "Neptune";
            waterTitan.userId = 5;
            waterTitan.elementId = 4;
            waterTitan.experience = 11501;
            waterTitan.active = false;
            waterTitan.imagePath = "http://localhost:14854/Images/water.png";
            waterTitan.dateCreated = last;
            waterTitan.wins = 20;
            waterTitan.losses = 10;

            HOFcharacterList.Add(waterTitan);
            

            return HOFcharacterList;

        }
    }
}