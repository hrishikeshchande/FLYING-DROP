using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace FD_1
{
    public partial class ProductList1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["CustomerIn"] == null)
            {
                Response.Redirect("Signin.aspx");
            }

            //title of the product category
            if (Request.QueryString["cat"]!=null)
            {
                catname.Text = Request.QueryString["cat"];
                DataList1.DataSourceID = "SqlDataSource2";
                DataList1.DataBind();
            }
            //id of the shop
            if (Request.QueryString["pshopid"] != null)
            {
                catname.Text = "Shop Id " + Request.QueryString["pshopid"];
                DataList1.DataSourceID = "SqlDataSource3";
                DataList1.DataBind();
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
        }
    }
}