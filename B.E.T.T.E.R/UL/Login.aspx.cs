﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace B.E.T.T.E.R.UL
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            /* Only used for first account since database has not been created 
               Modify this code once database is connected
             */
            if (txtUsername.Text == "geoff.skinner@newcastle.edu.au" && txtPwd.Text == "better3050")
            {
                /* Create session and redirect user to main menu */
                Session["username"] = Convert.ToString(txtUsername.Text);
                Session["message"] = "Welcome back, " + "Geoff";
                Response.Redirect("MainMenu.aspx");
            }
            else
            {
                /* Display error if user details are incorrect */
                lblError.Visible = true;
            }

            /*
                Write some code to get the user's first name from the database
                Session["message"] = "Welcome back, " + First Name;
             */
        }
    }
}