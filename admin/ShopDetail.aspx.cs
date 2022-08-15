using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace FD_1.admin
{
    public partial class ShopDetail : System.Web.UI.Page
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

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string filepath = "~//img/shop/";
            string filename = Path.GetFileName(simg.PostedFile.FileName);
            simg.SaveAs(Server.MapPath("//img/shop/" + filename));
            filepath = "~//img/shop/" + filename;

            SqlConnection con = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand("insert into shop (sname,sdescription,slocation,sowner,simg) values(@sname,@sdescription,@slocation,@sowner,@simg) ", con);
            cmd.Parameters.Add("@sname", sname.Text);
            cmd.Parameters.Add("@sdescription", sdescription.Text);
            cmd.Parameters.Add("@slocation", slocation.Text);
            cmd.Parameters.Add("@sowner", sowner.Text);
            cmd.Parameters.Add("@simg", filepath);
            con.Open();
            try
            {
                int record = cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Shop Data updated with " + sname.Text + "');</script>");
                Response.Redirect("ShopDetail.aspx");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Use Another Shop Name');</script>");
            }
            finally
            {
                con.Close();
            }
        }
    }
}