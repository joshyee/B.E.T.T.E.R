using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            if (IsValid) {

                Session["name"] = Convert.ToString(txtFirstName.Text);
                Session["username"] = Convert.ToString(txtEmail.Text);
                Response.Redirect("MainMenu.aspx");

            }
        }
    }
}