<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="MainMasterWebForm.aspx.cs" Inherits="FD_1.MainMasterWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--this content section for the this MainMasterWebForm.aspx page we can add css and js for this page to this session 
    this content are load at the top of master page in head section--%>

    <%--slick.js--%>

    <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css" integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw==" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css" integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A==" crossorigin="anonymous" />--%>

    <%--for changing the style of the arrow we use offline stylesheet above are online stylesheet--%>
    <link href="slick/css/slick.css" rel="stylesheet" />
    <link href="slick/css/slick-theme.css" rel="stylesheet" />
    <%--end slick.js--%>
    <style>
        body {
            background-color: #e3e3e3;
        }

        .slick-prev:before {
            content: "<";
            color: black;
            padding: 10px;
            background-color: white;
            font-size: 50px;
        }

        .slick-next:before {
            content: ">";
            color: black;
            padding: 10px;
            background-color: white;
            font-size: 50px;
        }

        #hover-blue:hover {
            box-shadow: inset 1px -6px 16px 1px #b8d2fc;
        }

        .zoom:hover .card-img-top {
            -ms-transform: scale(1.5); /* IE 9 */
            -webkit-transform: scale(1.5); /* Safari 3-8 */
            transform: scale(1.1);
        }

        .zoom:hover .card-title {
            -ms-transform: scale(1.5); /* IE 9 */
            -webkit-transform: scale(1.5); /* Safari 3-8 */
            transform: scale(1.1);
        }

        .card {
            border-radius: 25px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--banner--%>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/banner/b1.jpg" class="d-block" style="height: 350px; width: 100%;" alt="...">
            </div>
            <div class="carousel-item">
                <img src="img/banner/b2.jpg" class="d-block" style="height: 350px; width: 100%" alt="...">
            </div>
            <div class="carousel-item">
                <img src="img/banner/b3.jpg" class="d-block" style="height: 350px; width: 100%" alt="...">
            </div>
            <div class="carousel-item">
                <img src="img/banner/b4.jpg" class="d-block" style="height: 350px; width: 100%" alt="...">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <%--end banner--%>

    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FD_1ConnectionString %>" SelectCommand="SELECT * FROM [shop]"></asp:SqlDataSource>
    <br />

    <%--season offer--%>
    <div class="container-fluid ">
        <div class="p-3" style="background-color: white;">
            <h3><u>Season Offer</u></h3>
            <a href="#">
                <img src="img/mango.jpg" class="card-img-top " alt="..." style="width: 100%;">
            </a>
        </div>
    </div>
    <%--end season offer--%>

    <br />
    <br />

    <%--Delivery info--%>
    <div class="container-fluid ">
        <div class="card border-secondary">
            <h3 class="card-header text-center" style="background-color: #33a3f5; border-radius: 25px 25px 0px 0px">Delivery Info</h3>
            <div class="card-body" style="background-color: #e3f2fd;">
                <h4 class="card-title">Timing Slot </h4>
                <p class="card-text mx-5">
                    After the all shopping the product are added to card<br />
                    Then at the time of placing order finally you will get the option for the selecting the time slot.<br />
                    There are many time slot.
                    <br />
                    This time slot indicated the delivery time.
                </p>
                <%--<a href="#" class="btn btn-primary">Go somewhere</a>--%>
            </div>
            <div class="card-body" style="background-color: #e3f2fd;">
                <h4 class="card-title">Delivery Area </h4>
                <p class="card-text mx-5">
                    We can delivery and provide service only in the Vashi navi mumbai.
                    <br />
                    In fee day we are launch this service for all over the navi mumbai
                </p>
                <%--<a href="#" class="btn btn-primary">Go somewhere</a>--%>
            </div>
            <div class="card-body" style="background-color: #e3f2fd; border-radius: 0px 0px 25px 25px;">
                <h4 class="card-title">Payment method</h4>
                <p class="card-text mx-5">
                    There are many option for payment.<br />
                    You can pay by Cash, UPI:-Google Pay/Phone Pay/And all as you preferable.
                </p>
                <%--<a href="#" class="btn btn-primary">Go somewhere</a>--%>
            </div>
        </div>
    </div>
    <%--end Delivery info--%>

    <br />
    <br />

    <%--shop section--%>
    <div class="container-fluid">
        <h3 class="ml-5">Get from Nearest Shop</h3>
    </div>
    <div class="container mt-3">

        <asp:DataList ID="DataList1" CssClass="row" runat="server" DataKeyField="shopid" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatLayout="Flow">
            <ItemTemplate>
                    <div class="row">
                        <div class="col-lg-4 ml-3 mb-3">
                            <div class="card" style="width: 22rem;">
                                <asp:Image ID="Image1" runat="server" class="card-img-top" ImageUrl='<%# Eval("simg") %>' Width="350px" Height="200px" />
                                <div class="card-body" id="hover-blue">
                                    Id:
                                    <asp:Label ID="Label3" Text='<%# Eval("shopid") %>' runat="server"></asp:Label>
                                    <h5 class="card-title">Shop Name: 
                                    <asp:Label ID="Label2" Text='<%# Eval("sname") %>' runat="server"></asp:Label>
                                    </h5>
                                    <p class="card-text">
                                        Description:
                                    <asp:Label ID="Label1" Text='<%# Eval("sdescription") %>' runat="server"></asp:Label>
                                        <br />
                                        Location:
                                    <asp:Label ID="Label4" Text='<%# Eval("slocation") %>' runat="server"></asp:Label>
                                        <br />
                                        Owner:
                                    <asp:Label ID="Label5" Text='<%# Eval("sowner") %>' runat="server"></asp:Label>
                                    </p>
                                    <asp:LinkButton ID="ByFromShop" CssClass="btn btn-primary" runat="server" PostBackUrl='<%# "ProductList1.aspx?pshopid=" +Eval("shopid") %>'>Buy from this shop</asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>
            </ItemTemplate>
        </asp:DataList>

        <%--<asp:DataList ID="DataList1" runat="server" DataKeyField="shopid" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatColumns="3">
                <ItemTemplate>

                    <div class="mb-3">
                        <div class="card" id="hover-blue">
                            <asp:Image ID="Image1" runat="server" class="card-img-top" ImageUrl='<%# Eval("simg") %>' Width="350px" Height="200px"/>
                            <div class="card-body">
                                    Id:
                                    <asp:Label ID="Label3" Text='<%# Eval("shopid") %>' runat="server"></asp:Label>
                                <h5 class="card-title">
                                    Shop Name: 
                                    <asp:Label ID="Label2" Text='<%# Eval("sname") %>' runat="server"></asp:Label>
                                </h5>               
                                <p class="card-text">
                                    Description:
                                    <asp:Label ID="Label1" Text='<%# Eval("sdescription") %>' runat="server"></asp:Label>
                                    <br />
                                    Location:
                                    <asp:Label ID="Label4" Text='<%# Eval("slocation") %>' runat="server"></asp:Label>
                                    <br />
                                    Owner:
                                    <asp:Label ID="Label5" Text='<%# Eval("sowner") %>' runat="server"></asp:Label>
                                </p>
                                <a href="#" class="btn btn-primary">Buy from this shop</a>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>--%>

        <%--<div class="ml-3">
                <div class="card" id="hover-blue">
                    <img src="img/shop/shopt.JPG" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Shop 1                
                            <p class="card-text">Best Products for all type with realinable price</p>
                            <a href="#" class="btn btn-primary">Buy from this shop</a>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
            </div>--%>
    </div>
    <%--end shop section--%>

    <br />
    <br />

    <%--product of daily essentials section--%>
    <div class="container-fluid">
        <h3 class="ml-5">Grocery</h3>
    </div>
    <div class="container mt-3">
        <div class="your-class-1 card-deck">
            <div class="ml-3 zoom">
                <asp:LinkButton ID="Dals" runat="server" OnClick="Dals_Click" style="color:black;">
                    <div class="card p-3">
                        <img src="img/product/mainPage slider/dal.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title text-center">Dals</h5>
                            <%--<p class="card-text">Best Products for all type with realinable price</p>
                            <a href="#" class="btn btn-primary">Buy from this shop</a>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>--%>
                        </div>
                    </div>
                </asp:LinkButton>
            </div>
            <div class="ml-3 zoom">
                <div class="card p-3">
                    <img src="img/product/mainPage slider/pulse.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title text-center">Pulses</h5>
                    </div>
                </div>
            </div>
            <div class="ml-3 zoom">
                <asp:LinkButton ID="Dry_Fruits" runat="server" OnClick="Dry_Fruits_Click" style="color:black;">
                    <div class="card p-3">
                        <img src="img/product/mainPage slider/dry_fruit.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title text-center">Dry Fruits</h5>
                        </div>
                    </div>
                </asp:LinkButton>
            </div>
            <div class="ml-3 zoom">
                <div class="card p-3">
                    <img src="img/product/mainPage slider/oil.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title text-center">Cooking Oil</h5>
                    </div>
                </div>
            </div>
            <div class="ml-3 zoom">
                <div class="card p-3">
                    <img src="img/product/mainPage slider/milk.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title text-center">Milk</h5>
                    </div>
                </div>
            </div>
            <div class="ml-3 zoom">
                <div class="card p-3">
                    <img src="img/product/mainPage slider/ghe.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title text-center">Ghee</h5>
                    </div>
                </div>
            </div>
            <div class="ml-3 zoom">
                <div class="card p-3">
                    <img src="img/product/mainPage slider/flours.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title text-center">Flours</h5>
                    </div>
                </div>
            </div>
            <div class="ml-3 zoom">
                <div class="card p-3">
                    <img src="img/product/mainPage slider/rice.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title text-center">Rice</h5>
                    </div>
                </div>
            </div>
            <div class="ml-3 zoom">
                <div class="card p-3">
                    <img src="img/product/mainPage slider/masala.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title text-center">Masala</h5>
                    </div>
                </div>
            </div>
            <div class="ml-3 zoom">
                <div class="card p-3">
                    <img src="img/product/mainPage slider/salt.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title text-center">Salt</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--product of daily essentials section--%>

    <br />
    <br />

    <%--cricket offer--%>
    <div class="container-fluid ">
        <div class="p-3" style="background-color: white;">
            <a href="#">
                <img src="img/cricket.jpg" class="card-img-top" alt="..." style="width: 100%;">
            </a>
        </div>
    </div>
    <%--end cricket offer--%>

    <br />
    <br />

    <script src="slick/js/jquery-1.11.0.js"></script>
    <script src="slick/js/slick.min.js"></script>

    <script type="text/javascript">
        //     $(document).ready(function () {
        //         $('.your-class').slick({
        //             dots: false,
        //             arrows: true,
        //             infinite: false,
        //             speed: 300,
        //             slidesToShow: 3,
        //             slidesToScroll: 1,
        //             responsive: [
        //{
        //    breakpoint: 1024,
        //    settings: {
        //        slidesToShow: 2,
        //        slidesToScroll: 1,
        //        infinite: false,
        //        dots: false
        //    }
        //},
        //{
        //    breakpoint: 600,
        //    settings: {
        //        slidesToShow: 1,
        //        slidesToScroll: 1,
        //        dots: true,
        //        arrows: false,
        //        autoplay: true,
        //        autoplaySpeed: 2000,
        //        infinite: false
        //    }
        //},
        //{
        //    breakpoint: 480,
        //    settings: {
        //        slidesToShow: 1,
        //        slidesToScroll: 1,
        //        dots: true,
        //        arrows: false,
        //        autoplay: true,
        //        autoplaySpeed: 2000,
        //        infinite: false
        //    }
        //}
        //             ]
        //         });
        //     });

        $(document).ready(function () {
            $('.your-class-1').slick({
                dots: false,
                arrows: true,
                infinite: false,
                speed: 300,
                slidesToShow: 5,
                slidesToScroll: 1,
                responsive: [
   {
       breakpoint: 1024,
       settings: {
           slidesToShow: 4,
           slidesToScroll: 1,
           infinite: false,
           dots: false
       }
   },
   {
       breakpoint: 600,
       settings: {
           slidesToShow: 2,
           slidesToScroll: 1,
           dots: true,
           arrows: false,
           autoplay: true,
           autoplaySpeed: 2000,
           infinite: false
       }
   },
   {
       breakpoint: 480,
       settings: {
           slidesToShow: 2,
           slidesToScroll: 1,
           dots: true,
           arrows: false,
           autoplay: true,
           autoplaySpeed: 2000,
           infinite: false
       }
   }
                ]
            });
        });
    </script>
</asp:Content>
