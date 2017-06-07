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
            // Get the currently selected row using the SelectedRow property.
            GridViewRow row = ChallengeGridView.SelectedRow;

            // Get the opponent titan selected and find titan id
            string opponentTitan = row.Cells[0].Text;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["udbBetterConnectionString"].ConnectionString);
            conn.Open();
            string getTitanId = "select titanId from tblTitan where titanName =  '" + opponentTitan + "'";
            SqlCommand opponentComm = new SqlCommand(getTitanId, conn);
            string titanId = opponentComm.ExecuteScalar().ToString().Replace(" ", "");
            Session["opponentTitan"] = titanId;
            conn.Close();

            // Get the opponent user id
            string opponentName = row.Cells[1].Text;
            conn.Open();
            string getUserId = "select userId from tblUser where username =  '" + opponentName + "'";
            SqlCommand opponentUserComm = new SqlCommand(getUserId, conn);
            string opponentUserId = opponentUserComm.ExecuteScalar().ToString().Replace(" ", "");
            Session["opponentUserId"] = opponentUserId;
            conn.Close();
            
        }
    }
}