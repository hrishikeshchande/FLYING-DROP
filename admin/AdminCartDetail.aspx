<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="AdminCartDetail.aspx.cs" Inherits="FD_1.admin.AdminCartDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid p-3">
        <h1 class="text-center mt-3 mb-5">Customer's Cart Detail</h1>
        <div class="row">
            <div class="col-lg-12 col-md-12 d-flex justify-content-center">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FD_1ConnectionString %>" SelectCommand="SELECT * FROM [cart] WHERE ([confirmOrder] = @confirmOrder)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="false" Name="confirmOrder" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <asp:GridView ID="GridView2" CssClass="table table-responsive" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="cartid" HeaderText="cartid" InsertVisible="False" ReadOnly="True" SortExpression="cartid" />
                        <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="cdate" HeaderText="cdate" SortExpression="cdate" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="confirmOrder" HeaderText="confirmOrder" SortExpression="confirmOrder" />
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
