﻿using System;
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
            
            // Get userId from the database
            conn.Open();
            string checkUserId = "select userId from tblUser where username =  '" + (string)Session["user"] + "'";
            SqlCommand userComm = new SqlCommand(checkUserId, conn);
            string userId = userComm.ExecuteScalar().ToString().Replace(" ", "");
            Session["userId"] = userId;
            conn.Close();
            
            conn.Open();
            string checkUser = "select count(*) from tblUser where username =  '" + (string)Session["user"] + "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                // Display welcome message
                lblUsername.Text = "Welcome back, " + (string)Session["user"];

                // Get the user's exercise points balance from the database
                conn.Open();
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