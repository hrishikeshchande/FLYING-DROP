using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace FD_1
{
    public partial class OrderDetail : System.Web.UI.Page
    { 
        //connection string
        string constring = ConfigurationManager.ConnectionStrings["FlyingDrop"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CustomerIn"] == null)
            {
                Response.Redirect("Signin.aspx");
            }
        }
    }
}