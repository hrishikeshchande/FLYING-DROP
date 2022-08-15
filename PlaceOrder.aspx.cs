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
    public partial class PlaceOrder1 : System.Web.UI.Page
    {
        //connection string
        string constring = ConfigurationManager.ConnectionStrings["FlyingDrop"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CustomerIn"] == null)
            {
                Response.Redirect("Signin.aspx");
            }
            else if (Session["CustomerIn"] != null)
            {
                try
                {
                    SqlConnection con = new SqlConnection(constring);
                    SqlCommand cmd = new SqlCommand("select * from customer where email = '" + Session["CustomerIn"].ToString() + "'and address IS NOT NULL", con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        PlaceOrder.Visible = true;
                    }
                    else
                    {
                        PlaceOrder.Visible = false;
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }

        //add the user Address we add by SqlCommand
        protected void BtnAddAddress_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand("update customer set address=@address, landMark=@landMark, sector=@sector where email=@email ", con);
            cmd.Parameters.Add("@address", Address1.Text);
            cmd.Parameters.Add("@landMark", LandMark.Text);
            cmd.Parameters.Add("@sector", DropDownListSector.SelectedItem.Value);
            cmd.Parameters.Add("@email", Session["CustomerIn"].ToString());
            con.Open();
            try
            {
                int record = cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Address has been added');</script>");
                Response.Redirect("PlaceOrder.aspx");
                //AddressPanel.Visible = false;
                Address1.Text = "";
                LandMark.Text = "";
                DropDownListSector.SelectedIndex = 0;
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Address has"+ex.Message+" not added');</script>");
            }
            finally
            {
                con.Close();
            }
        }

        //time slot adding into DB by StoreProcedure--finalPrice
        protected void Button1_Click(object sender, EventArgs e)
        {
            string timeSlot = string.Empty;
            string Percentage = string.Empty;
            if (Rb30.Checked)
            {
                timeSlot = "30";
                Percentage = "30";
            }
            else if(Rb60.Checked)
            {
                timeSlot = "60";
                Percentage = "20";
            }
            else if(Rb120.Checked)
            {
                timeSlot = "120";
                Percentage = "10";
            }

            SqlConnection con = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand("finalPrice", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@email", Session["CustomerIn"].ToString());
            cmd.Parameters.AddWithValue("@timeSlot", timeSlot);
            cmd.Parameters.AddWithValue("@percentage", Percentage);
            con.Open();
            try
            {
                int record = cmd.ExecuteNonQuery();
                //Response.Write("<script>alert('total price successfully');</script>");
                Response.Redirect("PlaceOrder.aspx");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Not able update total price');</script>");
            }
            finally
            {
                con.Close();
            }
        }

        //change the status of product at cart, orderDetail table by StoreProcedure--OrderStatus
        protected void FinalPlaceOrder_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand("OrderStatus", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@email", Session["CustomerIn"].ToString());
            cmd.Parameters.AddWithValue("@confirmOrderDate", DateTime.Now.ToString());
            con.Open();
            try
            {
                int record = cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Order has been Place successfully');</script>");
                //Response.Redirect("PlaceOrder.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Not able to Place Order"+ex.Message+"');</script>");
            }
            finally
            {
                con.Close();
            }
        }
    }
}