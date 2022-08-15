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
    public partial class ProductDetail : System.Web.UI.Page
    {
        //connection strin
        string constring = ConfigurationManager.ConnectionStrings["FlyingDrop"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminIn"] == null)
            {
                Response.Redirect("adminSignIn.aspx");
            }
            using (SqlConnection con = new SqlConnection(constring))
            {
                SqlCommand cmd = new SqlCommand("select shopid from shop", con);
                con.Open();
                DropDownListPShopid.DataSource = cmd.ExecuteReader();
                DropDownListPShopid.DataTextField = "shopid";
                DropDownListPShopid.DataBind();
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (pimg.HasFile)
            {
                string str = pimg.FileName;
                pimg.PostedFile.SaveAs(Server.MapPath("~//img/product/grocery/" + DropDownPCategories.SelectedItem.Text + "/" + str));
                string imgpath = "~//img/product/grocery/" + DropDownPCategories.SelectedItem.Text + "/" + str.ToString();

                SqlConnection con = new SqlConnection(constring);
                SqlCommand cmd = new SqlCommand("insert into product (pname,pdescription,pprice,pcategories,pimg,pshopid) values(@pname,@pdescription,@pprice,@pcategories,@pimg,@shopid) ", con);
                cmd.Parameters.Add("@pname", pname.Text);
                cmd.Parameters.Add("@pdescription", pdescription.Text);
                cmd.Parameters.Add("@pprice", pprice.Text);
                cmd.Parameters.Add("@pcategories", DropDownPCategories.SelectedItem.Text.ToString());
                cmd.Parameters.Add("@pimg", imgpath);
                cmd.Parameters.Add("@shopid", DropDownListPShopid.SelectedItem.Text.ToString());
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Product Added successfully');</script>");
                Response.Redirect("AdminProductDetail.aspx");
            }
            else
            {
                Response.Write("<script>alert('Product Not Added successfully');</script>");
                Response.Redirect("AdminProductDetail.aspx");
            }   
        }
    }
}