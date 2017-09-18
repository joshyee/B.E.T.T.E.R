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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            /* Create new session and redirect user to main menu if form fields are valid */
            Page.Validate("RegisterInfoGroup");
            if (Page.IsValid)
            {
               
                try
                {
                    // Start new session and redirect user to main menu
                    Session["user"] = txtUsername.Text;
                    Session["userId"] = 1;
                    Session["experience"] = 0;
                    Response.Redirect("MainMenu.aspx");
                }
                catch (Exception ex)
                {
                    // Display user exists error
                    lblError.Visible = true;
                }
                
            }
        }
    }
}