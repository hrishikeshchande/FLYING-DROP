<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="AdminOrderDetail.aspx.cs" Inherits="FD_1.admin.AdminOrderDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container-fluid p-3">
        <h1 class="text-center mt-3 mb-5">Customer's Order Detail </h1>
        <div class="row">
            <div class="col-lg-12 col-md-12 d-flex justify-content-center">

                <%--for getting the order detail with the product that has in confirmOrder in cart table true
                all the detail are display to admin by useing store Procedure-AdminViewUserOrder--%>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FD_1ConnectionString %>" SelectCommand="AdminViewUserOrder" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

                <div class="table ">
                    <asp:GridView ID="GridView1" CssClass="table-responsive" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="oid" OnRowCancelingEdit="GridView1_RowCancelingEdit1" OnRowEditing="GridView1_RowEditing1" OnRowUpdating="GridView1_RowUpdating1">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderText="oid" InsertVisible="False" SortExpression="oid">
                                <%--<EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("oid") %>'></asp:Label>
                            </EditItemTemplate>--%>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("oid") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="email" SortExpression="email">
                                <%--<EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                            </EditItemTemplate>--%>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="pid" SortExpression="pid">
                                <%--<EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("pid") %>'></asp:TextBox>
                            </EditItemTemplate>--%>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="pimg">
                                <%--<EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("pimg") %>'></asp:TextBox>
                            </EditItemTemplate>--%>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pimg") %>' />
                                </ItemTemplate>
                                <ControlStyle Height="120px" Width="150px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="pname" SortExpression="pname">
                                <%--<EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("pname") %>'></asp:TextBox>
                            </EditItemTemplate>--%>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="pshopid" SortExpression="pshopid">
                                <%--<EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("pshopid") %>'></asp:TextBox>
                            </EditItemTemplate>--%>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("pshopid") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="quantity" SortExpression="quantity">
                                <%--<EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("quantity") %>'></asp:TextBox>
                            </EditItemTemplate>--%>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="pprice" SortExpression="pprice">
                                <%--<EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("pprice") %>'></asp:TextBox>
                            </EditItemTemplate>--%>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("pprice") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="totalCartPrice" SortExpression="totalCartPrice">
                                <%--<EditItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("totalCartPrice") %>'></asp:TextBox>
                            </EditItemTemplate>--%>
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("totalCartPrice") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="timeSlot" SortExpression="timeSlot">
                                <%--<EditItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("timeSlot") %>'></asp:TextBox>
                            </EditItemTemplate>--%>
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("timeSlot") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="deliveryCharges" SortExpression="deliveryCharges">
                                <%--<EditItemTemplate>
                                <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("deliveryCharges") %>'></asp:TextBox>
                            </EditItemTemplate>--%>
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("deliveryCharges") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="total" SortExpression="total">
                                <%--<EditItemTemplate>
                                <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("total") %>'></asp:TextBox>
                            </EditItemTemplate>--%>
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("total") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="confirmOrderDate" SortExpression="confirmOrderDate">
                                <%--<EditItemTemplate>
                                <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("confirmOrderDate") %>'></asp:TextBox>
                            </EditItemTemplate>--%>
                                <ItemTemplate>
                                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("confirmOrderDate") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            
                            <%--this for updating the delivery status
                            <asp:CommandField ShowEditButton="true" HeaderText="Delivery Status" />--%>

                            <%--<asp:TemplateField HeaderText="orderDeliver" SortExpression="orderDeliver">
                                <EditItemTemplate>
                                    <asp:TextBox ID="orderdelivery" runat="server" Text='<%# Bind("orderDeliver") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("orderDeliver") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>--%>
                            <asp:TemplateField HeaderText="cartid" InsertVisible="False" SortExpression="cartid">
                                <%--<EditItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("cartid") %>'></asp:Label>
                            </EditItemTemplate>--%>
                                <ItemTemplate>
                                    <asp:Label ID="Label14" runat="server" Text='<%# Eval("cartid") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            
                            <%--<asp:BoundField DataField="pcategories" HeaderText="pcategories" SortExpression="pcategories" />
                            <asp:BoundField DataField="pdescription" HeaderText="pdescription" SortExpression="pdescription" />
                            <asp:BoundField DataField="cdate" HeaderText="cdate" SortExpression="cdate" />
                            <asp:BoundField DataField="percentageCharges" HeaderText="percentageCharges" SortExpression="percentageCharges" />
                            <asp:BoundField DataField="confirmOrder" HeaderText="confirmOrder" SortExpression="confirmOrder" />--%>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    <!--
        <Columns>
                        <asp:BoundField DataField="oid" HeaderText="oid" SortExpression="oid" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />

                        <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" />
                        <asp:ImageField DataImageUrlField="pimg" HeaderText="pimg">
                            <ControlStyle Height="120px" Width="150px" />
                            <ItemStyle Height="120px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                        <asp:BoundField DataField="pshopid" HeaderText="pshopid" SortExpression="pshopid" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="pprice" HeaderText="pprice" SortExpression="pprice" />
                        
                        <asp:BoundField DataField="totalCartPrice" HeaderText="totalCartPrice" SortExpression="totalCartPrice" />
                        <asp:BoundField DataField="timeSlot" HeaderText="timeSlot" SortExpression="timeSlot" />
                        <asp:BoundField DataField="deliveryCharges" HeaderText="deliveryCharges" SortExpression="deliveryCharges" />
                        <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                        <asp:BoundField DataField="confirmOrderDate" HeaderText="confirmOrderDate" SortExpression="confirmOrderDate" />

                        <asp:CommandField ShowEditButton="true" HeaderText="Update Delivery Status"/>

                        <asp:BoundField DataField="orderDeliver" HeaderText="orderDeliver" InsertVisible="False" ReadOnly="True" SortExpression="orderDeliver" />
                        <asp:BoundField DataField="cartid" HeaderText="cartid" InsertVisible="False" ReadOnly="True" SortExpression="cartid" />
                    
                         <%--<asp:BoundField DataField="percentageCharges" HeaderText="percentageCharges" SortExpression="percentageCharges" />--%>
                        <%--<asp:BoundField DataField="cdate" HeaderText="cdate" SortExpression="cdate" />--%>
                        <%--<asp:BoundField DataField="pcategories" HeaderText="pcategories" SortExpression="pcategories" />--%>
                        <%--<asp:BoundField DataField="pdescription" HeaderText="pdescription" SortExpression="pdescription" />--%>
                        <%--<asp:BoundField DataField="confirmOrder" HeaderText="confirmOrder" SortExpression="confirmOrder" />--%>
        -->
</asp:Content>
