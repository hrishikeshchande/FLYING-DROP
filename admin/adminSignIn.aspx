<%@ Page Title="" validateRequest="false" enableEventValidation="false" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="adminSignIn.aspx.cs" Inherits="FD_1.admin.adminMasterWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row flex-column-reverse flex-lg-row">
            <div class="col-lg-6 col-md-12">
                <img src="img/login.svg" style="width: 80%;" />
            </div>
            <div class="col-lg-6 col-md-12">
                <div class="p-5 font-weight-lighter">
                    <h3 class="text-center">Sign In</h3>
                    <div class="form-group mt-5">
                        <br />
                        <label>Email</label>
                        <asp:TextBox ID="email" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
                     </div>
                    <div class="form-group">
                        <label>Password</label>
                        <asp:TextBox ID="Password" runat="server" type="password" CssClass="form-control" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Button CssClass="btn btn-success btn-lg btn-block" ID="Button2" runat="server" Text="Sign In"/>
                    <br />
                    <br />
                    <%--<label class="float-right"><a href="adminRegistration.aspx">New User? Create a account</a></label>--%>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
