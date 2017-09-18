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
    public partial class ManageCharacters : System.Web.UI.Page
    {
        public string getElement(int element)
        {
            if (element == 1)
            {
                return "Fire";
            }
            else if (element == 2)
            {
                return "Air";
            }
            else if (element == 3)
            {
                return "Earth";
            }
            else if (element == 4)
            {
                return "Water";
            }
            return "Error";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
    }
}