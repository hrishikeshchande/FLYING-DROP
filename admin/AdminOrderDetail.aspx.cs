using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace FD_1.admin
{
    public partial class AdminOrderDetail : System.Web.UI.Page
    { 
        //connection strin
        string constring = ConfigurationManager.ConnectionStrings["FlyingDrop"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminIn"] == null)
            {
                Response.Redirect("adminSignIn.aspx");
            }
        }


        //this for updating the delivery status
        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
        }

        //this for updating the delivery status
        protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
        }

        //this for updating the delivery status
        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            //SqlConnection con = new SqlConnection(constring);
            //string orderDelivery = (GridView1.Rows[e.RowIndex].FindControl("orderdelivery") as TextBox).Text;
            //int oid = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Value);

            //SqlCommand cmd = new SqlCommand("UpdateDeliveryStatus",con);
            //cmd.CommandType = System.Data.CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@orderid", oid);
            //cmd.Parameters.AddWithValue("@deliveryStatus", orderDelivery);
            //con.Open();
            //cmd.ExecuteNonQuery();
            //con.Close();

            //try
            //{
            //    using (SqlConnection con = new SqlConnection(constring))
            //    {
            //        con.Open();
            //        SqlCommand cmd = new SqlCommand("update orderDetail set orderDeliver = @orderDeliver where oid = @oid", con);
            //        cmd.Parameters.AddWithValue("@orderDeliver", (GridView1.FindControl("orderdelivery") as TextBox).Text);
            //        cmd.Parameters.AddWithValue("@oid", Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Value));
            //        cmd.ExecuteNonQuery();
            //        GridView1.EditIndex = -1;
            //        Response.Write("<script>alert('Delivery status update successfully');</script>");
            //        con.Close();
            //    }
            //}
            //catch (Exception)
            //{
            //    Response.Write("<script>alert('Not able update delivery status');</script>");
            //}
        }
    }
}