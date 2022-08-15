using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace FD_1
{
    public partial class MainMaster : System.Web.UI.MasterPage
    {
        //connection strin
        string constring = ConfigurationManager.ConnectionStrings["FlyingDrop"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            signin.Visible = true;
            registration.Visible = true;
            BtnSignOut.Visible = false;
            Uname.Visible = false;
            cartDetailText.Visible = false;
            YourOrder.Visible = false;

            //if user login the CustomerIn has some value that is the email
            if (Session["CustomerIn"] != null)
            {
                Uname.Text = Session["CustomerIn"].ToString();
                signin.Visible = false;
                registration.Visible = false;
                BtnSignOut.Visible = true;
                Uname.Visible = true;
                cartDetailText.Visible = true;
                //check if email of login user are present in the orderDetail table then only the text id=YourOrder visible
                try
                {
                    SqlConnection con = new SqlConnection(constring);
                    SqlCommand cmd = new SqlCommand("select * from orderDetail where email = '" + Session["CustomerIn"].ToString() + "'and confirmOrder = '"+"true"+"'", con);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        YourOrder.Visible = true;
                    }
                    else
                    {
                        YourOrder.Visible = false;
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }

        }

        protected void BtnSignOut_Click(object sender, EventArgs e)
        {
            Session.Remove("CustomerIn");
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("MainMasterWebForm.aspx");
        }

        protected void Dals_select(object sender, EventArgs e)
        {
            Response.Redirect("ProductList1.aspx?cat=Dals");
        }

        protected void Pulses_select(object sender, EventArgs e)
        {

        }

        protected void DryFruits_select(object sender, EventArgs e)
        {
            Response.Redirect("ProductList1.aspx?cat=Dry Fruits");
        }

        protected void Biscuits_Cookies(object sender, EventArgs e)
        {
            Response.Redirect("ProductList1.aspx?cat=BiscuitsCookies");
        }
    }
}