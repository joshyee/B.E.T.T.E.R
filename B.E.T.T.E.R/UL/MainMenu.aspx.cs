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
    public partial class MainMenu : System.Web.UI.Page
    {
        public string getElement(int element)
        {
           if (element == 1)
            {
                return "Fire";
            }
           else if (element == 2)
            {
                return "Air";
            }
            else if (element == 3)
            {
                return "Earth";
            }
            else if (element == 4)
            {
                return "Water";
            }
            return "Error";
        }

        public int getLevel(int experience)
        {
            if (experience <= 1000)
            {
                return 1;
            }
            else if (experience <= 3000)
            {
                return 2;
            }
            else if (experience <= 6400)
            {
                return 3;
            }
            else if (experience <= 11500)
            {
                return 4;
            }
            else
            {
                return 0;
            }
        }

        public int getStep(int experience)
        {
            if (experience <= 200)
            {
                return 1;
            }
            else if (experience <= 425)
            {
                return 2;
            }
            else if (experience <= 675)
            {
                return 3;
            }
            else if (experience <= 1000)
            {
                return 4;
            }
            else if (experience <= 1400)
            {
                return 1;
            }
            else if (experience <= 1900)
            {
                return 2;
            }
            else if (experience <= 2400)
            {
                return 3;
            }
            else if (experience <= 3000)
            {
                return 4;
            }
            else if (experience <= 3700)
            {
                return 1;
            }
            else if (experience <= 4500)
            {
                return 2;
            }
            else if (experience <= 5400)
            {
                return 3;
            }
            else if (experience <= 6400)
            {
                return 4;
            }
            else if (experience <= 7500)
            {
                return 1;
            }
            else if (experience <= 8700)
            {
                return 2;
            }
            else if (experience <= 10000)
            {
                return 3;
            }
            else if (experience <= 11500)
            {
                return 4;
            }
            else
            {
                return 0;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Display welcome message
            lblUsername.Text = "Welcome back, " + (string)Session["user"];

            // Display XP
            lblXP.Text = Convert.ToString(Session["experience"]);
        }

        protected void btnManagePoints_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManagePoints.aspx");
        }

        protected void btnViewMore_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageCharacters.aspx");
        }
    }
}