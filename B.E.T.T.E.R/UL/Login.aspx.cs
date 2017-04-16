using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B.E.T.T.E.R.UL
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            /* Only used for first account since database has not been created */
            if (txtUsername.Text == "geoff.skinner@newcastle.edu.au" && txtPwd.Text == "better3050")
            {
                
                Session["username"] = Convert.ToString(txtUsername.Text);
                Response.Redirect("MainMenu.aspx");

            }
            else
            {
                lblError.Visible = true;
            }
        }
    }
}