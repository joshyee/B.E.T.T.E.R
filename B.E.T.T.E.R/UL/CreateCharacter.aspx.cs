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
    public partial class CreateCharacter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void fireTitan_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["udbBetterConnectionString"].ConnectionString);
            // Get userId from the database
            conn.Open();
            string checkUserId = "select userId from tblUser where username =  '" + (string)Session["user"] + "'";
            SqlCommand userComm = new SqlCommand(checkUserId, conn);
            string userId = userComm.ExecuteScalar().ToString().Replace(" ", "");
            conn.Close();

            // Check if user has existing fire elemental titan
            conn.Open();
            string checkUserTitan = "select count(*) from tblTitan where userId =  '" + userId + "' AND elementId = 1";
            SqlCommand titanComm = new SqlCommand(checkUserTitan, conn);
            int temp = Convert.ToInt32(titanComm.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                // Display titan exists error
                lblErrorFire.Visible = true;
            }
            else
            {
                // Insert elemental titan into database
                conn.Open();
                string insertQuery = "insert into tblTitan (titanName, userId, elementId, experience, active) values (@titanName, @userId, @elementId, @experience, @active)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@titanName", "Fire Titan");
                com.Parameters.AddWithValue("@userId", userId);
                com.Parameters.AddWithValue("@elementId", 1);
                com.Parameters.AddWithValue("@experience", 0);
                com.Parameters.AddWithValue("@active", true);
                com.ExecuteNonQuery();
                conn.Close();
            
                Response.Redirect("ManageCharacters.aspx");
            }
        }

        protected void airTitan_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["udbBetterConnectionString"].ConnectionString);
            // Get userId from the database
            conn.Open();
            string checkUserId = "select userId from tblUser where username =  '" + (string)Session["user"] + "'";
            SqlCommand userComm = new SqlCommand(checkUserId, conn);
            string userId = userComm.ExecuteScalar().ToString().Replace(" ", "");
            conn.Close();

            // Check if user has existing air elemental titan
            conn.Open();
            string checkUserTitan = "select count(*) from tblTitan where userId =  '" + userId + "' AND elementId = 4";
            SqlCommand titanComm = new SqlCommand(checkUserTitan, conn);
            int temp = Convert.ToInt32(titanComm.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                // Display titan exists error
                lblErrorAir.Visible = true;
            }
            else
            {
                // Insert elemental titan into database
                conn.Open();
                string insertQuery = "insert into tblTitan (titanName, userId, elementId, experience, active) values (@titanName, @userId, @elementId, @experience, @active)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@titanName", "Air Titan");
                com.Parameters.AddWithValue("@userId", userId);
                com.Parameters.AddWithValue("@elementId", 4);
                com.Parameters.AddWithValue("@experience", 0);
                com.Parameters.AddWithValue("@active", true);
                com.ExecuteNonQuery();
                conn.Close();

                Response.Redirect("ManageCharacters.aspx");
            }
        }

        protected void earthTitan_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["udbBetterConnectionString"].ConnectionString);
            // Get userId from the database
            conn.Open();
            string checkUserId = "select userId from tblUser where username =  '" + (string)Session["user"] + "'";
            SqlCommand userComm = new SqlCommand(checkUserId, conn);
            string userId = userComm.ExecuteScalar().ToString().Replace(" ", "");
            conn.Close();

            // Check if user has existing earth elemental titan
            conn.Open();
            string checkUserTitan = "select count(*) from tblTitan where userId =  '" + userId + "' AND elementId = 3";
            SqlCommand titanComm = new SqlCommand(checkUserTitan, conn);
            int temp = Convert.ToInt32(titanComm.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                // Display titan exists error
                lblErrorEarth.Visible = true;
            }
            else
            {
                // Insert elemental titan into database
                conn.Open();
                string insertQuery = "insert into tblTitan (titanName, userId, elementId, experience, active) values (@titanName, @userId, @elementId, @experience, @active)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@titanName", "Earth Titan");
                com.Parameters.AddWithValue("@userId", userId);
                com.Parameters.AddWithValue("@elementId", 3);
                com.Parameters.AddWithValue("@experience", 0);
                com.Parameters.AddWithValue("@active", true);
                com.ExecuteNonQuery();
                conn.Close();

                Response.Redirect("ManageCharacters.aspx");
            }
        }

        protected void waterTitan_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["udbBetterConnectionString"].ConnectionString);
            // Get userId from the database
            conn.Open();
            string checkUserId = "select userId from tblUser where username =  '" + (string)Session["user"] + "'";
            SqlCommand userComm = new SqlCommand(checkUserId, conn);
            string userId = userComm.ExecuteScalar().ToString().Replace(" ", "");
            conn.Close();

            // Check if user has existing water elemental titan
            conn.Open();
            string checkUserTitan = "select count(*) from tblTitan where userId =  '" + userId + "' AND elementId = 2";
            SqlCommand titanComm = new SqlCommand(checkUserTitan, conn);
            int temp = Convert.ToInt32(titanComm.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                // Display titan exists error
                lblErrorWater.Visible = true;
            }
            else
            {
                // Insert elemental titan into database
                conn.Open();
                string insertQuery = "insert into tblTitan (titanName, userId, elementId, experience, active) values (@titanName, @userId, @elementId, @experience, @active)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@titanName", "Water Titan");
                com.Parameters.AddWithValue("@userId", userId);
                com.Parameters.AddWithValue("@elementId", 2);
                com.Parameters.AddWithValue("@experience", 0);
                com.Parameters.AddWithValue("@active", true);
                com.ExecuteNonQuery();
                conn.Close();

                Response.Redirect("ManageCharacters.aspx");
            }
        }
    }
}