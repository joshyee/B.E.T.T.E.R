using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

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

            fireTitan.titanName = "Fire Titan";
            fireTitan.userId = Convert.ToInt32(Session["userId"]);
            fireTitan.elementId = 1;
            fireTitan.experience = 0;
            fireTitan.active = true;
            fireTitan.imagePath = "~/Images/fire.png";
            fireTitan.dateCreated = DateTime.Today;

            Character.TotalCharacters =+ 1;

        }

        protected void airTitan_Click(object sender, EventArgs e)
        {
            Character airTitan = new Character();

            airTitan.titanName = "Air Titan";
            airTitan.userId = Convert.ToInt32(Session["userId"]);
            airTitan.elementId = 2;
            airTitan.experience = 0;
            airTitan.active = true;
            airTitan.imagePath = "~/Images/air.png";
            airTitan.dateCreated = DateTime.Today;

            Character.TotalCharacters = +1;
        }

        protected void earthTitan_Click(object sender, EventArgs e)
        {
            Character earthTitan = new Character();

            earthTitan.titanName = "Earth Titan";
            earthTitan.userId = Convert.ToInt32(Session["userId"]);
            earthTitan.elementId = 3;
            earthTitan.experience = 0;
            earthTitan.active = true;
            earthTitan.imagePath = "~/Images/earth.png";
            earthTitan.dateCreated = DateTime.Today;

            Character.TotalCharacters = +1;
        }

        protected void waterTitan_Click(object sender, EventArgs e)
        {
            Character waterTitan = new Character();

            waterTitan.titanName = "Water Titan";
            waterTitan.userId = Convert.ToInt32(Session["userId"]);
            waterTitan.elementId = 4;
            waterTitan.experience = 0;
            waterTitan.active = true;
            waterTitan.imagePath = "~/Images/water.png";
            waterTitan.dateCreated = DateTime.Today;

            Character.TotalCharacters = +1;
        }
    }
}