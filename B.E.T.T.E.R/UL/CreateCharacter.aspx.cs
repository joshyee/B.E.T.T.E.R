using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Diagnostics;

namespace B.E.T.T.E.R.UL
{
    public partial class CreateCharacter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void fireTitan_Click(object sender, EventArgs e)
        {
            Character fireTitan = new Character();

            fireTitan.titanName = "Vulcan";
            fireTitan.userId = Convert.ToInt32(Session["userId"]);
            fireTitan.elementId = 1;
            fireTitan.experience = 0;
            fireTitan.active = true;
            fireTitan.imagePath = "http://localhost:14854/Images/fire.png";

            fireTitan.dateCreated = DateTime.Today;

            Character.TotalCharacters =+ 1;

            Session["fireTitan"] = fireTitan;
            Session["fireTitanName"] = fireTitan.titanName;
            Session["fireTitanUserId"] = fireTitan.userId;
            Session["fireTitanElementId"] = fireTitan.elementId;
            Session["fireTitanExperience"] = fireTitan.experience;
            Session["fireTitanActive"] = fireTitan.active;
            Session["fireTitanImagePath"] = fireTitan.imagePath;
            Session["fireTitanDateCreated"] = fireTitan.dateCreated;
            
        }

        protected void airTitan_Click(object sender, EventArgs e)
        {
            Character airTitan = new Character();

            airTitan.titanName = "Aeolus";
            airTitan.userId = Convert.ToInt32(Session["userId"]);
            airTitan.elementId = 2;
            airTitan.experience = 0;
            airTitan.active = true;
            airTitan.imagePath = "http://localhost:14854/Images/air.png";
            airTitan.dateCreated = DateTime.Today;

            Character.TotalCharacters = +1;

            Session["airTitan"] = airTitan;
            Session["airTitanName"] = airTitan.titanName;
            Session["airTitanUserId"] = airTitan.userId;
            Session["airTitanElementId"] = airTitan.elementId;
            Session["airTitanExperience"] = airTitan.experience;
            Session["airTitanActive"] = airTitan.active;
            Session["airTitanImagePath"] = airTitan.imagePath;
            Session["airTitanDateCreated"] = airTitan.dateCreated;
        }

        protected void earthTitan_Click(object sender, EventArgs e)
        {
            Character earthTitan = new Character();

            earthTitan.titanName = "Gaia";
            earthTitan.userId = Convert.ToInt32(Session["userId"]);
            earthTitan.elementId = 3;
            earthTitan.experience = 0;
            earthTitan.active = true;
            earthTitan.imagePath = "http://localhost:14854/Images/earth.png";
            earthTitan.dateCreated = DateTime.Today;

            Character.TotalCharacters = +1;

            Session["earthTitan"] = earthTitan;
            Session["earthTitanName"] = earthTitan.titanName;
            Session["earthTitanUserId"] = earthTitan.userId;
            Session["earthTitanElementId"] = earthTitan.elementId;
            Session["earthTitanExperience"] = earthTitan.experience;
            Session["earthTitanActive"] = earthTitan.active;
            Session["earthTitanImagePath"] = earthTitan.imagePath;
            Session["earthTitanDateCreated"] = earthTitan.dateCreated;
        }

        protected void waterTitan_Click(object sender, EventArgs e)
        {
            Character waterTitan = new Character();

            waterTitan.titanName = "Poseidon";
            waterTitan.userId = Convert.ToInt32(Session["userId"]);
            waterTitan.elementId = 4;
            waterTitan.experience = 0;
            waterTitan.active = true;
            waterTitan.imagePath = "http://localhost:14854/Images/water.png";
            waterTitan.dateCreated = DateTime.Today;

            Character.TotalCharacters = +1;

            Session["waterTitan"] = waterTitan;
            Session["waterTitanName"] = waterTitan.titanName;
            Session["waterTitanUserId"] = waterTitan.userId;
            Session["waterTitanElementId"] = waterTitan.elementId;
            Session["waterTitanExperience"] = waterTitan.experience;
            Session["waterTitanActive"] = waterTitan.active;
            Session["waterTitanImagePath"] = waterTitan.imagePath;
            Session["waterTitanDateCreated"] = waterTitan.dateCreated;
        }
    }
}