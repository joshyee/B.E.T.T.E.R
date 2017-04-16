using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B.E.T.T.E.R.UL
{
    public partial class MainMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /* Retrieve and display user's first name */
            // string name = (string) Session["name"];
            // lblFirstName.Text = "Welcome back, " + name.ToString();

            /* Only used for first account since database has not been created */
            lblFirstName.Text = "Welcome back, Geoff";

            /* Retrieve and display username */
            string username = (string)Session["username"];
            lblUsername.Text = "Username: " + username.ToString();
        }
    }
}