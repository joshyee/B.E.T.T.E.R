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
    public partial class UploadExercise : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            /* Check if the form values on the Upload Exericse page are valid */
            Page.Validate("UploadInfoGroup");
            if (Page.IsValid)
            {
                // Connect to the database
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["udbBetterConnectionString"].ConnectionString);
                
                // Get userId from the database
                conn.Open();
                string checkUserId = "select userId from tblUser where username =  '" + (string)Session["user"] + "'";
                SqlCommand userComm = new SqlCommand(checkUserId, conn);
                string userId = userComm.ExecuteScalar().ToString().Replace(" ", "");
                conn.Close();
                
                // Update exercise points for user
                conn.Open();
                int XP = Convert.ToInt32(txtXP.Text);
                string insertQuery = "UPDATE tblUser SET exercisePoints = exercisePoints + '" + XP + "' WHERE userId =  '" + userId + "'";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.ExecuteNonQuery();
                conn.Close();

                // Display success message
                lblSuccess.Visible = true;
            }
        }
    }
}