<%@ Page Title="" enableEventValidation="false" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="ShopDetail.aspx.cs" Inherits="FD_1.admin.ShopDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid p-3">
        <h1 class="text-center mt-3 mb-5">Shop 
            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FD_1ConnectionString %>" DeleteCommand="DELETE FROM [shop] WHERE [shopid] = @shopid" InsertCommand="INSERT INTO [shop] ([sname], [sdescription], [slocation], [sowner], [simg]) VALUES (@sname, @sdescription, @slocation, @sowner, @simg)" SelectCommand="SELECT * FROM [shop]" UpdateCommand="UPDATE [shop] SET [sname] = @sname, [sdescription] = @sdescription, [slocation] = @slocation, [sowner] = @sowner, [simg] = @simg WHERE [shopid] = @shopid">
                <DeleteParameters>
                    <asp:Parameter Name="shopid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="sname" Type="String" />
                    <asp:Parameter Name="sdescription" Type="String" />
                    <asp:Parameter Name="slocation" Type="String" />
                    <asp:Parameter Name="sowner" Type="String" />
                    <asp:Parameter Name="simg" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="sname" Type="String" />
                    <asp:Parameter Name="sdescription" Type="String" />
                    <asp:Parameter Name="slocation" Type="String" />
                    <asp:Parameter Name="sowner" Type="String" />
                    <asp:Parameter Name="simg" Type="String" />
                    <asp:Parameter Name="shopid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>--%>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FD_1ConnectionString %>" DeleteCommand="DELETE FROM [shop] WHERE [shopid] = @shopid" InsertCommand="INSERT INTO [shop] ([sname], [sdescription], [slocation], [sowner], [simg]) VALUES (@sname, @sdescription, @slocation, @sowner, @simg)" SelectCommand="SELECT * FROM [shop]" UpdateCommand="UPDATE [shop] SET [sname] = @sname, [sdescription] = @sdescription, [slocation] = @slocation, [sowner] = @sowner, [simg] = @simg WHERE [shopid] = @shopid">
                <DeleteParameters>
                    <asp:Parameter Name="shopid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="sname" Type="String" />
                    <asp:Parameter Name="sdescription" Type="String" />
                    <asp:Parameter Name="slocation" Type="String" />
                    <asp:Parameter Name="sowner" Type="String" />
                    <asp:Parameter Name="simg" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="sname" Type="String" />
                    <asp:Parameter Name="sdescription" Type="String" />
                    <asp:Parameter Name="slocation" Type="String" />
                    <asp:Parameter Name="sowner" Type="String" />
                    <asp:Parameter Name="simg" Type="String" />
                    <asp:Parameter Name="shopid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </h1>

        <div class="row flex-column-reverse flex-lg-row">

            <div class="col-lg-5 col-md-12">
                <h4 class="text-center mb-3">Create New Shop</h4>
                 <div class="form-row">
                    <div class="form-group col-md-5">
                        <label for="inputEmail4">Shop Name*</label>
                        <asp:TextBox ID="sname" runat="server" type="text" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Shop Name" ControlToValidate="sname" ForeColor="Red" ValidationGroup="addShopDetail"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group col-md-5">
                        <label for="inputEmail4">Shop Owner*</label>
                        <asp:TextBox ID="sowner" runat="server" type="text" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Shop Owner" ControlToValidate="sowner" ForeColor="Red" ValidationGroup="addShopDetail"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                        <label for="inputEmail4">Shop Location*</label>
                    <asp:TextBox ID="slocation" runat="server" type="text" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Shop Location" ControlToValidate="slocation" ForeColor="Red" ValidationGroup="addShopDetail" ></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                        <label for="inputEmail4">Shop Description*</label>
                    <asp:TextBox ID="sdescription" runat="server" type="text" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Shop Description" ControlToValidate="sdescription" ForeColor="Red" ValidationGroup="addShopDetail"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                        <label for="inputEmail4">Shop Image*</label>
                        <asp:FileUpload ID="simg" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Upload Shop Image" ControlToValidate="simg" ForeColor="Red" ValidationGroup="addShopDetail" ></asp:RequiredFieldValidator>
                </div>
                <asp:Button class="btn btn-success btn-lg btn-block" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" ValidationGroup="addShopDetail" />
            </div>


            <div class="col-lg-7 col-md-12">
                <h3 class="text-center">Shop List</h3>
                <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="shopid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" BorderWidth="0px" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="shopid" HeaderText="shopid" InsertVisible="False" ReadOnly="True" SortExpression="shopid" >
                        </asp:BoundField>
                        <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" >
                        </asp:BoundField>
                        <asp:BoundField DataField="sdescription" HeaderText="sdescription" SortExpression="sdescription" >
                        </asp:BoundField>
                        <asp:BoundField DataField="slocation" HeaderText="slocation" SortExpression="slocation" >
                        </asp:BoundField>
                        <asp:BoundField DataField="sowner" HeaderText="sowner" SortExpression="sowner" >
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="simg" HeaderText="Image">
                            <ControlStyle Height="100px" Width="150px" />
                        </asp:ImageField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
