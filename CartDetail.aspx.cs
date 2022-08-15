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
    public partial class PlaceOrder : System.Web.UI.Page
    {
        //connection strin
        string constring = ConfigurationManager.ConnectionStrings["FlyingDrop"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CustomerIn"] == null)
            {
                Response.Redirect("Signin.aspx");
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName == "addQuantity")
            {
                DataList1.EditItemIndex = e.Item.ItemIndex;
            }
            else if(e.CommandName == "removeFromCart")
            {
                string cartid = ((Label)e.Item.FindControl("cartid")).Text;

                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("delete from cart where cartid ='" + cartid + "'",con);
                con.Open();
                try
                {
                    int record = cmd.ExecuteNonQuery();
                    //Response.Write("<script>alert('Remove successfully');</script>");
                    Response.Redirect("CartDetail.aspx");
                }
                catch (Exception)
                {
                    Response.Write("<script>alert('Not able to Remove');</script>");
                }
                finally
                {
                    con.Close();
                    DataList1.EditItemIndex = -1;
                }
            }
            else if(e.CommandName == "updateQuantity")
            {
                string cartid = ((Label)e.Item.FindControl("cartid1")).Text;
                string newquantity = ((DropDownList)e.Item.FindControl("DropDownListQuantity")).Text;

                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("update cart set quantity='" + newquantity + "' where cartid=" + cartid,con);
                con.Open();
                try
                {
                    int record = cmd.ExecuteNonQuery();
                    //Response.Write("<script>alert('quantity update successfully');</script>");
                    Response.Redirect("CartDetail.aspx");
                }
                catch (Exception)
                {
                    Response.Write("<script>alert('Not able update quantity');</script>");
                }
                finally
                {
                    con.Close();
                    DataList1.EditItemIndex = -1;
                }
            }
        }

        //for insert total price into table with the email we use storeProcedure--insertTotalPriceCart
        protected void btnCheckOut_Click1(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand("insertTotalPriceCart", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@email", Session["CustomerIn"].ToString());
            cmd.Parameters.AddWithValue("@operation", "insertotalCartPrice");
            con.Open();
            try
            {
                int record = cmd.ExecuteNonQuery();
                //Response.Write("<script>alert('total price successfully');</script>");
                Response.Redirect("PlaceOrder.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Not able update total price"+ex.Message+"');</script>");
            }
            finally
            {
                con.Close();
            }
        }
        
    }

    }