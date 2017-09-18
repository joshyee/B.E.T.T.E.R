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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Check if login details are correct
            if (txtUsername.Text == "test" && txtPwd.Text == "better3050")
            {
                Session["user"] = Convert.ToString(txtUsername.Text);
                Session["userId"] = 1;
                Session["experience"] = 0;
                Response.Redirect("MainMenu.aspx");
            }
            else
            {
                lblError.Visible = true;
            }
        }
    }
}