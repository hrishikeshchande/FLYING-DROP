using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FD_1.admin
{
    public partial class AdminCartDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminIn"] == null)
            {
                Response.Redirect("adminSignIn.aspx");
            }
        }
    }
}