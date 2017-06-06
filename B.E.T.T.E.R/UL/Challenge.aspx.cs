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
    public partial class Challenge : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Get userId from the database
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["udbBetterConnectionString"].ConnectionString);
            conn.Open();
            string checkUserId = "select userId from tblUser where username =  '" + (string)Session["user"] + "'";
            SqlCommand userComm = new SqlCommand(checkUserId, conn);
            string userId = userComm.ExecuteScalar().ToString().Replace(" ", "");
            conn.Close();
        }

        protected void ChallengeGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GoToFight(object sender, EventArgs e)
        {
            Response.Redirect("Fight.aspx");
        }
    }
}