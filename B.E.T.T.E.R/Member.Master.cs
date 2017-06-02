using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B.E.T.T.E.R
{
    public partial class Member : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /* Redirect Non-members to the Welcome page */
            if (Session["user"] == null)
            {
                Response.Redirect("Welcome.aspx");
            }
            
        }
    }
}