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

            // Get the user's email from the database
            
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["udbBetterConnectionString"].ConnectionString);
            conn.Open();
            string checkUser = "select count(*) from tblUser where username =  '" + (string)Session["user"] + "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select email from tblUser where username =  '" + (string)Session["user"] + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string email = passComm.ExecuteScalar().ToString().Replace(" ", "");

                lblUsername.Text = "Welcome back, " + (string)Session["user"];
                lblEmail.Text = "Email: " + email;
            }
          
           

            /* Display user's details 
            if (Session["user"] != null)
            {
                
                lblUsername.Text = (string)Session["message"];

                string username = (string)Session["username"];
                lblEmail.Text = "Username: " + username.ToString();
            }
            */
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