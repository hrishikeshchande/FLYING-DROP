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
    public partial class Registration : System.Web.UI.Page
    {
        //connection strin
        string constring = ConfigurationManager.ConnectionStrings["FlyingDrop"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand("insert into customer (fname,lname,mobile,email,password) values(@fname,@lname,@mobile,@email,@password) ", con);
            cmd.Parameters.Add("@fname", fname.Text);
            cmd.Parameters.Add("@lname", lname.Text);
            cmd.Parameters.Add("@mobile", mobileNo.Text);
            cmd.Parameters.Add("@email", email.Text);
            cmd.Parameters.Add("@password", Password.Text);
            con.Open();
            try
            {
                int record = cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Registration Success with " + mobileNo.Text + "');</script>");
                Response.Redirect("SignIn.aspx");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Use Another Email / Mobile No');</script>");
            }
            finally
            {
                con.Close();
            }
        }
    }
}