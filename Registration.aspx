<%@ Page Title="" validateRequest="false" enableEventValidation="false" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="FD_1.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row flex-column-reverse flex-lg-row">
            <div class="col-lg-6 col-md-12">
                <img src="img/vector1.jpg" style="width: 100%;" />
            </div>
            <div class="col-lg-6 col-md-12 mt-5">
                <h3 class="text-center mb-3">Registration</h3>
                <div class="form-row">
                    <div class="form-group col-md-5">
                        <label for="inputEmail4">First Name*</label>
                        <asp:TextBox ID="fname" runat="server" type="text" class="form-control" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter First Name" ControlToValidate="fname" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group col-md-5">
                        <label for="inputPassword4">Last Name*</label>
                        <asp:TextBox ID="lname" runat="server" type="text" class="form-control" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Last Name" ControlToValidate="lname" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress">Mobile Number*</label>
                        <asp:TextBox ID="mobileNo" runat="server" type="text" class="form-control" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Mobile Number" ControlToValidate="mobileNo" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Correct Mobile Number" ControlToValidate="mobileNo" ForeColor="Red" ValidationExpression="^[7-9][0-9]{9}$"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label for="inputEmail4">Email*</label>
                        <asp:TextBox ID="email" runat="server" type="email" class="form-control" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Correct Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label for="inputPassword4">Enter a Password*</label>
                        <asp:TextBox ID="Password" runat="server" type="password" class="form-control" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter Correct Password" ControlToCompare="Password" ControlToValidate="ComfirmPassword" ForeColor="Red"></asp:CompareValidator>
                </div>
                <div class="form-group">
                    <label for="inputPassword4">Comfirm Password*</label>
                        <asp:TextBox ID="ComfirmPassword" runat="server" type="password" class="form-control" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Enter Correct Password" ControlToCompare="ComfirmPassword" ControlToValidate="Password" ForeColor="Red"></asp:CompareValidator>
                </div>
                    <asp:Button class="btn btn-success btn-lg btn-block" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    <br />
                    <br />
                    <label class="float-right"><a href="SignIn.aspx">Already a user? Sign In</a></label>

            </div>
        </div>
    </div>
</asp:Content>
