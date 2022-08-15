<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="OrderDetail.aspx.cs" Inherits="FD_1.OrderDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--sqlDatasource for the getting the order detail by using storeProcedure----viewUserOrder--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FD_1ConnectionString %>" SelectCommand="viewUserOrder" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="CustomerIn" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <div class="container-fluid">
        <div class="row flex-column-reverse flex-lg-row p-3">
            <div class="col-lg-8 col-md-12">
                <h1 class="text-center mb-3">Your Order
                </h1>

                <div class="container-fluid ml-lg-5">
                    <div class="row">
                        <div class="col-lg-12 col-sm-12">

                            <asp:DataList ID="DataList1" CssClass="row" runat="server" AutoGenerateColumns="False" RepeatDirection="Horizontal" RepeatLayout="Flow" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    <%--cartid:
                                    <asp:Label ID="cartidLabel" runat="server" Text='<%# Eval("cartid") %>' />
                                    <br />
                                    pid:
                                    <asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' />
                                    <br />
                                    cdate:
                                    <asp:Label ID="cdateLabel" runat="server" Text='<%# Eval("cdate") %>' />
                                    <br />
                                    quantity:
                                    <asp:Label ID="quantityLabel" runat="server" Text='<%# Eval("quantity") %>' />
                                    <br />
                                    pname:
                                    <asp:Label ID="pnameLabel" runat="server" Text='<%# Eval("pname") %>' />
                                    <br />
                                    pdescription:
                                    <asp:Label ID="pdescriptionLabel" runat="server" Text='<%# Eval("pdescription") %>' />
                                    <br />
                                    pprice:
                                    <asp:Label ID="ppriceLabel" runat="server" Text='<%# Eval("pprice") %>' />
                                    <br />
                                    pcategories:
                                    <asp:Label ID="pcategoriesLabel" runat="server" Text='<%# Eval("pcategories") %>' />
                                    <br />
                                    pimg:
                                    <asp:Label ID="pimgLabel" runat="server" Text='<%# Eval("pimg") %>' />
                                    <br />
                                    pshopid:
                                    <asp:Label ID="pshopidLabel" runat="server" Text='<%# Eval("pshopid") %>' />
                                    <br />
                                    ItemTotalPrice:
                                    <asp:Label ID="ItemTotalPriceLabel" runat="server" Text='<%# Eval("ItemTotalPrice") %>' />
                                    <br />
                                    <br />--%>
                                    <%--cartid:
                                    <asp:Label ID="cartidLabel" runat="server" Text='<%# Eval("cartid") %>' />
                                    <br />
                                    pid:
                                    <asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' />
                                    <br />
                                    cdate:
                                    <asp:Label ID="cdateLabel" runat="server" Text='<%# Eval("cdate") %>' />
                                    <br />
                                    quantity:
                                    <asp:Label ID="quantityLabel" runat="server" Text='<%# Eval("quantity") %>' />
                                    <br />
                                    pname:
                                    <asp:Label ID="pnameLabel" runat="server" Text='<%# Eval("pname") %>' />
                                    <br />
                                    pdescription:
                                    <asp:Label ID="pdescriptionLabel" runat="server" Text='<%# Eval("pdescription") %>' />
                                    <br />
                                    pprice:
                                    <asp:Label ID="ppriceLabel" runat="server" Text='<%# Eval("pprice") %>' />
                                    <br />
                                    pcategories:
                                    <asp:Label ID="pcategoriesLabel" runat="server" Text='<%# Eval("pcategories") %>' />
                                    <br />
                                    pimg:
                                    <asp:Label ID="pimgLabel" runat="server" Text='<%# Eval("pimg") %>' />
                                    <br />
                                    pshopid:
                                    <asp:Label ID="pshopidLabel" runat="server" Text='<%# Eval("pshopid") %>' />
                                    <br />
                                    ItemTotalPrice:
                                    <asp:Label ID="ItemTotalPriceLabel" runat="server" Text='<%# Eval("ItemTotalPrice") %>' />
                                    <br />
                                    oid:
                                    <asp:Label ID="oidLabel" runat="server" Text='<%# Eval("oid") %>' />
                                    <br />--%>
                                    <div class="card mb-3">
                                        <div class="row no-gutters">
                                            <div class="col-md-4">
                                                <asp:Image ID="Image2" CssClass="mt-2" runat="server" ImageUrl='<%# Eval("pimg") %>' Width="100%" />
                                            </div>
                                            <div class="col-md-8">
                                                <div class="card-body" style="width: 300px;">
                                                    <h5 class="card-title">
                                                        <%--Cart id:<asp:Label ID="cartid" runat="server" Text='<%# Eval("cartid") %>'></asp:Label>--%>
                                                        <%--Product id:<asp:Label ID="pid" runat="server" Text='<%# Eval("pid") %>'></asp:Label>--%>
                                                        Order Id:<asp:Label ID="oidLabel" runat="server" Text='<%# Eval("oid") %>' />
                                                        <br />
                                                        <asp:Label ID="pname" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                                                    </h5>
                                                    <p class="card-text">
                                                        <small class="text-muted">Categories: 
                                                        <asp:Label ID="pcategories" runat="server" Text='<%# Eval("pcategories") %>'></asp:Label>
                                                            Description:
                                                        <asp:Label ID="pdescription" runat="server" Text='<%# Eval("pdescription") %>'></asp:Label>
                                                            Shop id:
                                                        <asp:Label ID="pshopid" runat="server" Text='<%# Eval("pshopid") %>'></asp:Label>
                                                        </small>
                                                    </p>
                                                    <p class="card-text mt-3">
                                                        Rs 
                                                      <asp:Label ID="pprice" runat="server" Text='<%# Eval("pprice","{0} Rs") %>'></asp:Label>
                                                    </p>
                                                    <%--<p class="card-text mt-3">
                                                        Added At:
                                                    <asp:Label ID="cdate" runat="server" Text='<%# Bind("cdate") %>'></asp:Label>
                                                    </p>--%>
                                                    <p class="card-text mt-3">
                                                        Quantity:
                                                    <%--<EditItemTemplate>
                                                        <asp:TextBox ID="newQuantity" runat="server" TextMode="Number" Text='<%# Bind("quantity") %>'></asp:TextBox>
                                                    </EditItemTemplate>--%>
                                                        <asp:Label ID="quantity" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                                                        <%--<asp:LinkButton ID="changequantity" runat="server" CssClass="btn btn-secondary btn-sm btn-sm" CommandName="addQuantity">
                                                        <i class="fa fa-plus" aria-hidden="true"></i>Add
                                                        </asp:LinkButton>--%>
                                                    </p>
                                                    <p class="card-text mt-3">
                                                        Total Price:
                                                    <asp:Label ID="ItemTotalPrice" runat="server" Text='<%# Eval("ItemTotalPrice","{0} Rs") %>'></asp:Label>
                                                    </p>
                                                    <%--<div class="col-lg-12 col-sm-12">
                                                        <asp:LinkButton ID="btnRemoveCart" runat="server" CssClass="btn btn-danger btn-lg btn-block" CommandName="removeFromCart">
                                                        <i class="fa fa-times" aria-hidden="true"></i>Remove From Cart
                                                        </asp:LinkButton>
                                                    </div>--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-12">
                <%--this sql for if any previous address--%>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FD_1ConnectionString %>" SelectCommand="SELECT [address], [landMark], [sector] FROM [customer] WHERE ([email] = @email)">
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="CustomerIn" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
                        <ItemTemplate>
                            <h1 class="text-center ml-5 text-center">Address</h1>
                            <div class="card p-3 mt-5 ml-5" style="box-shadow: 13px 16px 11px 1px rgba(0,0,0,0.1);">
                                <div class="row no-gutters">
                                    <p class="card-text">
                                        <b>Address</b>
                                        <br />
                                        <asp:Label ID="Address" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                    </p>
                                </div>
                                <hr />
                                <div class="row no-gutters">
                                    <p class="card-text">
                                        <b>Land Mark : </b>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("landMark") %>'></asp:Label>
                                    </p>
                                </div>
                                <hr />
                                <div class="row no-gutters">
                                    <p class="card-text">
                                        <b>Sector : </b>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("sector") %>'></asp:Label>
                                    </p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>

                <%--this sql for if any Payment detail, time slot, and all--%>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FD_1ConnectionString %>" SelectCommand="SELECT * FROM [orderDetail] WHERE ([email] = @email)">
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="CustomerIn" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

                        <h1 class="text-center mt-5 mb-2">Payment Detail</h1>

                        <asp:DataList ID="DataList3" runat="server"  AutoGenerateColumns="False" RepeatDirection="Horizontal" RepeatLayout="Flow" DataSourceID="SqlDataSource3">
                            <ItemTemplate>
                                <%--oid:
                                <asp:Label ID="oidLabel" runat="server" Text='<%# Eval("oid") %>'></asp:Label>
                                email:
                                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                totalCartPrice:
                                <asp:Label ID="totalCartPriceLabel" runat="server" Text='<%# Eval("totalCartPrice") %>' />
                                percentageCharges:
                                <asp:Label ID="percentageChargesLabel" runat="server" Text='<%# Eval("percentageCharges") %>' />
                                timeSlot:
                                <asp:Label ID="timeSlotLabel" runat="server" Text='<%# Eval("timeSlot") %>' />
                                deliveryCharges:
                                <asp:Label ID="deliveryChargesLabel" runat="server" Text='<%# Eval("deliveryCharges") %>' />
                                total:
                                <asp:Label ID="totalLabel" runat="server" Text='<%# Eval("total") %>' />
                                confirmOrder:
                                <asp:Label ID="confirmOrderLabel" runat="server" Text='<%# Eval("confirmOrder") %>' />
                                confirmOrderDate:
                                <asp:Label ID="confirmOrderDateLabel" runat="server" Text='<%# Eval("confirmOrderDate") %>' />--%>
                                <div class="card p-3" style="box-shadow: 13px 16px 11px 1px rgba(0,0,0,0.1);">
                                      <h5 class="text-center mb-2">Order ID: 
                                          <asp:Label CssClass="card-text font-weight-bold" ID="Label6" runat="server" Text='<%# Eval("oid") %>'></asp:Label>
                                      </h5>
                                    <div class="row no-gutters">
                                        <div class="col-md-6 mt-2">
                                            <p class="card-text">Cart Total Price</p>
                                        </div>
                                        <div class="col-md-6 mt-2">
                                            <asp:Label CssClass="card-text float-right font-weight-bold" ID="cartPrice" runat="server" Text='<%# Eval("totalCartPrice") %>'></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row no-gutters">
                                        <div class="col-md-6 mt-2">
                                            <p class="card-text">Delivery Charge</p>
                                        </div>
                                        <div class="col-md-6 mt-2">
                                            <asp:Label CssClass="card-text float-right font-weight-bold" ID="deliveryCharge" runat="server" Text='<%# Eval("deliveryCharges") %>'>Rs</asp:Label>
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="row no-gutters">
                                        <div class="col-md-6 mt-1">
                                            <p class="card-text text-success">Total Price</p>
                                        </div>
                                        <div class="col-md-6 mt-1">
                                            <asp:Label CssClass="card-text float-right font-weight-bold text-success" ID="Label4" runat="server" Text='<%# Eval("total") %>'>Rs</asp:Label>
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="row no-gutters">
                                        <div class="col-md-6 mt-2">
                                            <p class="card-text">Selected Time Slot</p>
                                        </div>
                                        <div class="col-md-6 mt-2">
                                            <asp:Label CssClass="card-text float-right font-weight-bold" ID="Label2" runat="server" Text='<%# Eval("timeSlot","{0} Minutes") %>'></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row no-gutters">
                                        <div class="col-md-6 mt-2">
                                            <p class="card-text">Order Place Date/Time</p>
                                        </div>
                                        <div class="col-md-6 mt-2">
                                            <asp:Label CssClass="card-text float-right font-weight-bold" ID="Label5" runat="server" Text='<%# Eval("confirmOrderDate") %>'></asp:Label>
                                        </div>
                                    </div>
                                    <%--<div class="row no-gutters">
                                        <div class="col-md-12 mt-4">
                                            <asp:LinkButton ID="FinalPlaceOrder" runat="server" class="btn btn-success btn-lg btn-block" OnClick="FinalPlaceOrder_Click" CausesValidation="False">Place Order</asp:LinkButton>
                                        </div>
                                    </div>--%>
                                </div>
                                <hr class="my-4"/>
                            </ItemTemplate>
                        </asp:DataList>
            </div>

        </div>
    </div>

</asp:Content>
