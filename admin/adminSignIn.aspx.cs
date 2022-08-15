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
    public partial class adminMasterWebForm : System.Web.UI.Page
    {
        //connection strin
        string constring = ConfigurationManager.ConnectionStrings["FlyingDrop"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {
                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("select * from admin where email = '" + email.Text + "' and password = '" + Password.Text + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["AdminIn"] = email.Text;
                    Response.Redirect("AdminDetail.aspx");
                    Response.Write("<script>alert('login success" + email.Text + "');</script>");
                }
                else
                {
                    //Response.Write("<script>alert('Enter Correct Login Detail');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}