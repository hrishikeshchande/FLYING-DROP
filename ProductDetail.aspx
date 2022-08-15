<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="FD_1.ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--for display the product according to catogory--%>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FD_1ConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE ([pid] = @pid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="pid" QueryStringField="pid" Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>

    <div class="container-fluid">
        <div class="row flex-column-reverse flex-lg-row">
            <div class="col-lg-2">
                <img src="img/man 1.jpg" style="width: 100%;" />
                <br />
                <img src="img/man 2.jpg" style="width: 100%;" />
            </div>
            <div class="col-lg-10">
                <h3 class="mt-5">
                    <asp:Label ID="productname" runat="server" Text="Product Id"></asp:Label>
                    <%--your card: <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>--%>
                </h3>
                <div class="container mt-3">

                    <asp:DataList ID="DataList1" CssClass="row" runat="server" DataSourceID="SqlDataSource2">
                        <ItemTemplate>

                            <div class="card mb-3 p-3" style="max-width: 600px;">
                                <div class="row no-gutters">
                                    <div class="col-lg-4 col-sm-12">
                                        <asp:Image ID="Image1" CssClass="p-2" runat="server" ImageUrl='<%# Eval("pimg") %>' Height="173px" Width="185px" />
                                    </div>
                                    <div class="col-lg-8 col-sm-12">
                                        <div class="card-body ml-lg-5">
                                            <h5 class="card-title">
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("pname") %>' />
                                            </h5>
                                            <p class="card-text">
                                                Description:
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("pdescription") %>' />
                                                <br />
                                                Price:
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("pprice","{0} Rs") %>' />
                                                <br />
                                                Product From shop id:
                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("pshopid") %>' />
                                                <br></br>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </ItemTemplate>
                    </asp:DataList>

                    <div class="row">
                        <div class="col-lg-5 col-sm-12 mb-3">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Select Quantity</span>
                                </div>
                                <asp:TextBox ID="TextBox1quantity" runat="server" CssClass="form-control" TextMode="Number" value="1"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-12 col-sm-12">
                            <asp:LinkButton ID="btn" runat="server" CssClass="btn btn-primary btn-lg btn-block" OnClick="btn_Click">
                                <i class="fa fa-cart-plus" aria-hidden="true"></i>Add To Cart
                            </asp:LinkButton>
                        </div>
                    </div>

                    </div>
                </div>
            </div>
        </div>
</asp:Content>
