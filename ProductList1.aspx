<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="ProductList1.aspx.cs" Inherits="FD_1.ProductList1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--for display all product--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FD_1ConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>

    <%--for display the product according to catogory by useing query string--%>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FD_1ConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE ([pcategories] = @pcategories)">
        <SelectParameters>
            <asp:QueryStringParameter Name="pcategories" QueryStringField="cat" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <%--for display the product according to ahop by useing query string--%>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FD_1ConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE ([pshopid] = @pshopid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="pshopid" QueryStringField="pshopid" Type="String" />
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
                    <asp:Label ID="catname" runat="server" Text="Biscuits & Cookies"></asp:Label>
                </h3>
                <div class="container mt-3">

                    <asp:DataList ID="DataList1" CssClass="row" runat="server" DataSourceID="SqlDataSource2" RepeatDirection="Horizontal" RepeatLayout="Flow" OnItemCommand="DataList1_ItemCommand">
                        <ItemTemplate>

                            <div class="row mb-3">
                                <div class="col-lg-3 ml-3 ">
                                    <div class="card" style="width: 18rem;">
                                        <asp:Image ID="Image1" CssClass="p-2 ml-5" runat="server" ImageUrl='<%# Eval("pimg") %>' Height="173px" Width="185px"/>
                                        <%--<asp:Label ID="pimgLabel" runat="server" Text='<%# Eval("pimg") %>' />--%>
                                        <div class="card-body">
                                            Id:
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("pid") %>' />
                                            <p class="card-title font-weight-bold">
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("pname") %>' />
                                            </p>
                                            <p class="card-text">
                                                Description:
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("pdescription") %>' />
                                                <br />
                                                Price:
                                             <asp:Label ID="Label4" runat="server" Text='<%# Eval("pprice","{0} Rs") %>' />
                                                <br />
                                                Product From shop id:
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("pshopid") %>' />
                                            </p>
                                            <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success btn-md btn-block" runat="server" PostBackUrl='<%# "ProductDetail.aspx?pid=" +Eval("pid") %>'>
                                                <i class="fas fa-shopping-cart pr-2"></i>View Detail
                                            </asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </ItemTemplate>
                    </asp:DataList>

                </div>
                <!--<div class="row mb-3">
                                <div class="col-lg-3 ml-3 ">
                                    <div class="card" style="width: 18rem;">
                                        <asp:Image ID="Image1" CssClass="p-2 ml-5" runat="server" ImageUrl='<%# Eval("pimg") %>' Height="173px" Width="185px"/>
                                        <%--<asp:Label ID="pimgLabel" runat="server" Text='<%# Eval("pimg") %>' />--%>
                                        <div class="card-body">
                                            Id:
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("pid") %>' />
                                            <p class="card-title font-weight-bold">
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("pname") %>' />
                                            </p>
                                            <p class="card-text">
                                                Description:
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("pdescription") %>' />
                                                <br />
                                                Price:
                                             <asp:Label ID="Label4" runat="server" Text='<%# Eval("pprice","{0} Rs") %>' />
                                                <br />
                                                Product From shop id:
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("pshopid") %>' />
                                            </p>
                                            <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success btn-md btn-block" runat="server" PostBackUrl='<%# "ProductDetail.aspx?pid=" +Eval("pid") %>'>
                                                <i class="fas fa-shopping-cart pr-2"></i>View Detail
                                            </asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                            </div>-->
                <%--<div class="row p-1">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="card" >
                            <img src="img/product/b1.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Good Day</h5>
                                <p class="card-text">200 gms Britannia <br/>Rs: 40</p>
                                <a href="#" class="btn btn-success btn-lg btn-block">Add To Cart</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="card" >
                            <img src="img/product/b1.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Good Day</h5>
                                <p class="card-text">200 gms Britannia <br/>Rs: 40</p>
                                <a href="#" class="btn btn-success btn-lg btn-block"">Add To Cart</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="card" >
                            <img src="img/product/b1.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Good Day</h5>
                                <p class="card-text">200 gms Britannia <br/>Rs: 40</p>
                                <a href="#" class="btn btn-success btn-lg btn-block"">Add To Cart</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="card" >
                            <img src="img/product/b1.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Good Day</h5>
                                <p class="card-text">200 gms Britannia <br/>Rs: 40</p>
                                <a href="#" class="btn btn-success btn-lg btn-block"">Add To Cart</a>
                            </div>
                        </div>
                    </div>
                    
                </div>--%>
            </div>
        </div>
    </div>

</asp:Content>
