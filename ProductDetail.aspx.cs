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
    public partial class ProductDetail : System.Web.UI.Page
    {
        //connection strin
        string constring = ConfigurationManager.ConnectionStrings["FlyingDrop"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CustomerIn"] == null)
            {
                Response.Redirect("Signin.aspx");
            }

            //title of the product category
            if (Request.QueryString["pid"] != null)
            {
                productname.Text = "Product Id " + Request.QueryString["pid"];
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand("insert into cart (pid,email,cdate,quantity,confirmOrder) values(@pid,@email,@cdate,@quantity,@confirmOrder) ", con);
            cmd.Parameters.AddWithValue("@pid", Request.QueryString["pid"]);
            cmd.Parameters.AddWithValue("@email", Session["CustomerIn"].ToString());
            cmd.Parameters.AddWithValue("@cdate", DateTime.Now.ToString());
            cmd.Parameters.AddWithValue("@quantity", TextBox1quantity.Text);
            cmd.Parameters.AddWithValue("@confirmOrder", "false");
            con.Open();
            try
            {
                int record = cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Product Added Success ');</script>");
                //Response.Redirect("ProductDetail.aspx?pid="+Request.QueryString["pid"]);
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('error " + ex.Message + "');</script>");
            }
            finally
            {
                con.Close();
            }
        }
    }
}