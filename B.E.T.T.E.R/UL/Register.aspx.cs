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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                // Check if username already exists in database
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["udbBetterConnectionString"].ConnectionString);
                conn.Open();
                string checkUser = "select count(*) from tblUser where username =  '" + txtUsername.Text  + "'";
                SqlCommand com = new SqlCommand(checkUser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();
                if (temp == 1)
                {
                    Response.Write("User already Exists");
                }

                
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            /* Create new session and redirect user to main menu if form fields are valid */
            Page.Validate("RegisterInfoGroup");
            if (Page.IsValid)
            {
                // Insert new user details into database 
                try
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["udbBetterConnectionString"].ConnectionString);
                    conn.Open();
                    string insertQuery = "insert into tblUser (username,email,passcode,parentEmail, pIN, active) values (@username, @email, @password, @parentEmail, @pIN, @active)";
                    SqlCommand com = new SqlCommand(insertQuery, conn);
                    com.Parameters.AddWithValue("@username", txtUsername.Text);
                    com.Parameters.AddWithValue("@email", txtEmail.Text);
                    com.Parameters.AddWithValue("@password", txtPwd.Text);
                    com.Parameters.AddWithValue("@parentEmail", txtParentEmail.Text);
                    // Generate random number for PIN
                    Random random = new Random();
                    int pIN = random.Next(1000, 9999);
                    com.Parameters.AddWithValue("@pIN", pIN);
                    com.Parameters.AddWithValue("@active", true);
                    com.ExecuteNonQuery();
                    conn.Close();

                }
                catch (Exception ex)
                {
                    // Display error on the web form
                    Response.Write("Error:" + ex.ToString());
                }
                
    
            }
        }
    }
}