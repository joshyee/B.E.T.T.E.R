﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B.E.T.T.E.R.UL
{
    public partial class UploadExercise : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            Page.Validate("UploadInfoGroup");
            if (Page.IsValid)
            {
                int XP = Convert.ToInt32(txtXP.Text);
                System.Diagnostics.Debug.WriteLine(XP);
            }
        }
    }
}