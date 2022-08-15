using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FD_1.admin
{
    public partial class adminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            signin.Visible = true;
            registration.Visible = false;
            BtnSignOut.Visible = false;
            Uname.Visible = false;
            //OperationMenu.Visible = false;

            if (Session["AdminIn"] != null)
            {
                Uname.Text = Session["AdminIn"].ToString();
                signin.Visible = false;
                registration.Visible = false;
                BtnSignOut.Visible = true;
                Uname.Visible = true;
                //OperationMenu.Visible = true;
            }
        }

        protected void BtnSignOut_Click(object sender, EventArgs e)
        {
            Session.Remove("AdminIn");
            Session.RemoveAll();
            Response.Redirect("adminSignIn.aspx");
        }
    }
}