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
    public partial class MainMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
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