using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FD_1
{
    public partial class MainMasterWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Dals_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductList1.aspx?cat=Dals");
        }
        
        protected void Dry_Fruits_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductList1.aspx?cat=Dry Fruits");
        }
        
    }
}