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

           // Open new connection and find user in the database
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["udbBetterConnectionString"].ConnectionString);
            conn.Open();
            string checkUser = "select count(*) from tblUser where username =  '" + (string)Session["user"] + "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                // Get the user's email from the database
                conn.Open();
                string checkEmailQuery = "select email from tblUser where username =  '" + (string)Session["user"] + "'";
                SqlCommand emailComm = new SqlCommand(checkEmailQuery, conn);
                string email = emailComm.ExecuteScalar().ToString().Replace(" ", "");
                
                lblUsername.Text = "Welcome back, " + (string)Session["user"];
                lblEmail.Text = "Email: " + email;

                // Get the user's exercise points balance from the database
                string checkPointsQuery = "select exercisePoints from tblUser where username =  '" + (string)Session["user"] + "'";
                SqlCommand pointsComm = new SqlCommand(checkPointsQuery, conn);
                string points = pointsComm.ExecuteScalar().ToString().Replace(" ", "");

                lblExercisePoints.Text = points + " XP";
                conn.Close();
            }
          
  
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