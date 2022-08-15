<%@ Page Title="" ValidateRequest="false" EnableEventValidation="false" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="FD_1.PlaceOrder1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row flex-lg-row p-3">

            <%--addrress field--%>
            <div class="row flex-column-reverse flex-lg-row">
                <div class="col-lg-8 col-md-12 ">
                    <asp:Panel ID="AddressPanel" runat="server">
                        <h1 class="text-center mb-3">Address Detail</h1>
                        <div class="mt-5 ml-5 d-flex justify-content-center">
                            <div class="form-row">
                                <div class="form-group col-lg-12">
                                    <label for="inputEmail4">Address*</label>
                                    <asp:TextBox ID="Address1" runat="server" type="text" class="form-control" TextMode="MultiLine" Height="150px"></asp:TextBox>
                                    <%--<textarea id="Address1" cols="20" rows="6" class="form-control" required="required"></textarea>--%>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Address" ForeColor="Red" ControlToValidate="Address1"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group col-lg-12">
                                    <label for="inputPassword4">Land Mark*</label>
                                    <asp:TextBox ID="LandMark" runat="server" type="text" class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Land Mark" ForeColor="Red" ControlToValidate="LandMark"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="inputEmail4">Sector*</label>
                                    <asp:DropDownList ID="DropDownListSector" runat="server" Width="200" Height="30">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Select Sector" ForeColor="Red" ControlToValidate="DropDownListSector" InitialValue="Select"></asp:RequiredFieldValidator>
                                </div>
                                <asp:Button class="btn btn-success btn-lg btn-block" ID="BtnAddAddress" runat="server" Text="Submit" OnClick="BtnAddAddress_Click1" />
                                <br />
                            </div>
                        </div>
                    </asp:Panel>
                </div>
                <div class="col-lg-4 col-md-12 ">
                    <%--this sql for if any previous address--%>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FD_1ConnectionString %>" SelectCommand="SELECT [address], [landMark], [sector] FROM [customer] WHERE ([email] = @email)">
                        <SelectParameters>
                            <asp:SessionParameter Name="email" SessionField="CustomerIn" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <h1 class="text-center mb-3 ml-5 text-center">Previous Address</h1>
                            <div class="card p-3 mt-5 ml-5" style="box-shadow: 13px 16px 11px 1px rgba(0,0,0,0.1);">
                                <div class="row no-gutters">
                                    <p class="card-text">
                                        <b>Address</b>
                                        <br />
                                        <asp:Label ID="Address" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                                    </p>
                                </div>
                                <hr />
                                <div class="row no-gutters">
                                    <p class="card-text">
                                        <b>Land Mark : </b>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("landMark") %>'></asp:Label>
                                    </p>
                                </div>
                                <hr />
                                <div class="row no-gutters">
                                    <p class="card-text">
                                        <b>Sector : </b>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("sector") %>'></asp:Label>
                                    </p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
            <%--end addrress field--%>

            <%--order conform panel--%>
            <asp:Panel ID="PlaceOrder" runat="server">
            <div class="row flex-lg-row ml-lg-5">
                <div class="col-lg-12 col-md-12 mt-5">
                    <h1 class="text-center mb-3">Select Time Slote</h1>
                    <div class="mt-5 ml-5 d-flex justify-content-center">
                        <div class="form-check form-check-inline">
                            <%--<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">--%>
                            <asp:RadioButton CssClass="form-check-input" ID="Rb30" runat="server" Text="30 Min" GroupName="timeSlot" Checked="True" />
                            <%--<label class="form-check-label" for="inlineRadio1">30 min</label>--%>
                        </div>
                        <div class="form-check form-check-inline">
                            <asp:RadioButton CssClass="form-check-input" ID="Rb60" runat="server" Text="60 Min" GroupName="timeSlot" />
                        </div>
                        <div class="form-check form-check-inline">
                            <asp:RadioButton CssClass="form-check-input" ID="Rb120" runat="server" Text="120 Min" GroupName="timeSlot" />
                        </div>
                        <div class="form-check form-check-inline">
                                <asp:Button ID="Button1" runat="server" Text="Confirm time" class="btn btn-info btn-sm" CausesValidation="False" OnClick="Button1_Click"/>
                                <%--<button type="button" class="btn btn-success btn-lg btn-block">Place Order</button>--%>
                        </div>
                    </div>

                    <div class="accordion mt-3" id="accordionExample">
                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        30 Minute</button>
                                </h2>
                            </div>
                            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="card-body">
                                    Your Grocey can be delivery before the 30 Minutes. with the 25% of your total product price as Delivery Charges. 
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header" id="headingTwo">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        60 Minute
                                    </button>
                                </h2>
                            </div>
                            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                <div class="card-body">
                                    Your Grocey can be delivery before the 60 Minutes. with the 20% of your total product price as Delivery Charges.
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header" id="headingThree">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        120 Minute
                                    </button>
                                </h2>
                            </div>
                            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                <div class="card-body">
                                    Your Grocey can be delivery before the 2 Hours. with the 10% of your total product price as Delivery Charges.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 mt-5">

                <%--this sqldatasource contain storeProcedure-totalPiceCart for the getting the total price and count of product of cart--%>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FD_1ConnectionString %>" SelectCommand="SELECT * FROM [orderDetail] WHERE (([email] = @email) AND ([confirmOrder] = @confirmOrder))">
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="CustomerIn" Type="String" />
                        <asp:Parameter DefaultValue="false" Name="confirmOrder" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <div class="row">
                    <div class="col-lg-3 col-sm-12"></div>
                    <div class="col-lg-6 col-sm-12">
                        <h1 class="text-center mb-3">Payment Detail</h1>

                        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <ItemTemplate>
                                <div class="card p-3">
                                    <div class="row no-gutters">
                                        <div class="col-md-6 mt-2">
                                            <p class="card-text">Cart Total Price</p>
                                        </div>
                                        <div class="col-md-6 mt-2">
                                            <asp:Label CssClass="card-text float-right font-weight-bold" ID="cartPrice" runat="server" Text='<%# Eval("totalCartPrice") %>'></asp:Label>
                                        </div>
                                    </div>
                                    <hr />
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
                                        <div class="col-md-6 mt-2">
                                            <p class="card-text">Total Price</p>
                                        </div>
                                        <div class="col-md-6 mt-2">
                                            <asp:Label CssClass="card-text float-right font-weight-bold" ID="Label4" runat="server" Text='<%# Eval("total") %>'>Rs</asp:Label>
                                        </div>
                                    </div>
                                    <div class="row no-gutters">
                                        <div class="col-md-12 mt-4">
                                            <asp:LinkButton ID="FinalPlaceOrder" runat="server" class="btn btn-success btn-lg btn-block" OnClick="FinalPlaceOrder_Click" CausesValidation="False">Place Order</asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <!--oid:
                                <asp:Label ID="oidLabel" runat="server" Text='<%# Eval("oid") %>' />
                                <br />
                                email:
                                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                <br />
                                totalCartPrice:
                                <asp:Label ID="totalCartPriceLabel" runat="server" Text='<%# Eval("totalCartPrice") %>' />
                                <br />
                                percentageCharges:
                                <asp:Label ID="percentageChargesLabel" runat="server" Text='<%# Eval("percentageCharges") %>' />
                                <br />
                                timeSlot:
                                <asp:Label ID="timeSlotLabel" runat="server" Text='<%# Eval("timeSlot") %>' />
                                <br />
                                deliveryCharges:
                                <asp:Label ID="deliveryChargesLabel" runat="server" Text='<%# Eval("deliveryCharges") %>' />
                                <br />
                                total:
                                <asp:Label ID="totalLabel" runat="server" Text='<%# Eval("total") %>' />
                                <br />
                                confirmOrder:
                                <asp:Label ID="confirmOrderLabel" runat="server" Text='<%# Eval("confirmOrder") %>' />
                                <br />
                                confirmOrderDate:
                                <asp:Label ID="confirmOrderDateLabel" runat="server" Text='<%# Eval("confirmOrderDate") %>' />
                                <br />
                                <br />-->
                    </div>
                </div>
            </div>
            </div>
            </asp:Panel>
            <%--end order conform panel--%>
        </div>
    </div>


</asp:Content>
