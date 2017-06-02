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
            // Check if user exists in database
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["udbBetterConnectionString"].ConnectionString);
            conn.Open();
            string checkUser = "select count(*) from tblUser where username =  '" + txtUsername.Text + "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select passcode from tblUser where username =  '" + txtUsername.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == txtPwd.Text)
                {
                    // If username and password is correct, start session and redirect member to the main menu
                    Session["user"] = txtUsername.Text;
                    Response.Redirect("MainMenu.aspx");
                }
                else
                {
                    // Incorrect username or password
                    lblError.Visible = true;
                }
               
            }
            else
            {
                // Incorrect username or password
                lblError.Visible = true;
            }

        }
    }
}