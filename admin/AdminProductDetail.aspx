<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="AdminProductDetail.aspx.cs" Inherits="FD_1.admin.ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid p-3">
        <h1 class="text-left mt-3 mb-5">Product
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FD_1ConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [pid] = @pid" InsertCommand="INSERT INTO [product] ([pname], [pdescription], [pprice], [pcategories], [pimg], [pshopid]) VALUES (@pname, @pdescription, @pprice, @pcategories, @pimg, @pshopid)" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [pname] = @pname, [pdescription] = @pdescription, [pprice] = @pprice, [pcategories] = @pcategories, [pimg] = @pimg, [pshopid] = @pshopid WHERE [pid] = @pid">
                <DeleteParameters>
                    <asp:Parameter Name="pid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="pname" Type="String" />
                    <asp:Parameter Name="pdescription" Type="String" />
                    <asp:Parameter Name="pprice" Type="String" />
                    <asp:Parameter Name="pcategories" Type="String" />
                    <asp:Parameter Name="pimg" Type="String" />
                    <asp:Parameter Name="pshopid" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="pname" Type="String" />
                    <asp:Parameter Name="pdescription" Type="String" />
                    <asp:Parameter Name="pprice" Type="String" />
                    <asp:Parameter Name="pcategories" Type="String" />
                    <asp:Parameter Name="pimg" Type="String" />
                    <asp:Parameter Name="pshopid" Type="String" />
                    <asp:Parameter Name="pid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </h1>

        <div class="row flex-column-reverse flex-lg-row">

            <div class="col-lg-12 col-md-12">
                <h4 class="text-center mb-3"><u>Add New Product</u></h4>
                <div class="container">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Product Name*</label>
                            <asp:TextBox ID="pname" runat="server" type="text" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Product Name" ControlToValidate="pname" ForeColor="Red" ValidationGroup="addProductDetail"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Product Price*</label>
                            <asp:TextBox ID="pprice" runat="server" type="text" class="form-control" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Product Price" ControlToValidate="pprice" ForeColor="Red" ValidationGroup="addProductDetail"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Product Categories* </label>
                            <asp:DropDownList ID="DropDownPCategories" runat="server" Width="300" Height="30">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem Text="Dals"></asp:ListItem>
                                <asp:ListItem Text="Dry Fruits"></asp:ListItem>
                                <asp:ListItem Text="BiscuitsCookies"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="<br>Please Select Product Categories" ForeColor="Red" ControlToValidate="DropDownPCategories" ValidationGroup="addProductDetail" InitialValue="Select"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Product Shop ID*</label>
                            <asp:DropDownList ID="DropDownListPShopid" runat="server" Width="300" Height="30">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="<br>Please Select Product Shop Id" ControlToValidate="DropDownListPShopid" ForeColor="Red" ValidationGroup="addProductDetail"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail4">Product Description*</label>
                        <asp:TextBox ID="pdescription" runat="server" type="text" class="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Ente Product Description" ControlToValidate="pdescription" ForeColor="Red" ValidationGroup="addProductDetail"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail4">Product Image*</label>
                        <asp:FileUpload ID="pimg" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Upload Product Image" ControlToValidate="pimg" ForeColor="Red" ValidationGroup="addProductDetail"></asp:RequiredFieldValidator>
                    </div>
                    <div class="d-flex justify-content-center">
                        <asp:Button class="btn btn-success btn-lg" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" ValidationGroup="addProductDetail" />
                    </div>
                </div>
            </div>


            <div class="col-lg-12 col-md-12 mt-5">
                <h3 class="text-center m-3"><u>Product List</u></h3>
                <div class="d-flex justify-content-center">
                    <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="pid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" BorderWidth="0px" />
                        <Columns>
                            <%--<asp:BoundField DataField="pimg" HeaderText="pimg" SortExpression="pimg" />--%>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="pid" HeaderText="pid" InsertVisible="False" ReadOnly="True" SortExpression="pid"></asp:BoundField>
                            <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname"></asp:BoundField>
                            <asp:BoundField DataField="pprice" HeaderText="pprice" SortExpression="pprice"></asp:BoundField>
                            <asp:BoundField DataField="pcategories" HeaderText="pcategories" SortExpression="pcategories"></asp:BoundField>
                            <asp:BoundField DataField="pdescription" HeaderText="pdescription" SortExpression="pdescription"></asp:BoundField>
                            <asp:ImageField DataImageUrlField="pimg" HeaderText="pImage">
                                <ControlStyle Height="120px" Width="150px" />
                            </asp:ImageField>
                            <asp:BoundField DataField="pshopid" HeaderText="pshopid" SortExpression="pshopid" />
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

    </div>
</asp:Content>
