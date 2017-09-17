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
    }
}