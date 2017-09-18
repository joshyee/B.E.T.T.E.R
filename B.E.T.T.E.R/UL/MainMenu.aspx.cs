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