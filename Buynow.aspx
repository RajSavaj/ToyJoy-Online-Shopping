<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Buynow.aspx.cs" Inherits="Buynow1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/card.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    .card-img-top
    
    {
    	height:250px;
    }
    .float
    {
    	float:right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="banner">
        <div class="container">
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s">
                    <span>
                        <img src="img/cart.png" height="54" width="54" />Buy Now</h2>
               
            </div>
        </div>
        <div class="container">
            <div class="row">
                <asp:Repeater ID="rpt" runat="server" onitemcommand="rpt_ItemCommand">
                    <ItemTemplate>
                        <div class="col-md-4">
                            <div class="card">
                                <img class="card-img-top" src='<%#Eval("item_image").ToString().Substring(2, Eval("item_image").ToString().Length - 2)%>' >
                                <div class="card-block">
                                    <h4 class="card-title"><%#Eval("item_name")%></h4>
                                    <h4 class="card-price"><%#Eval("price")%></h4>
                                    <h4 class="card-description"><%#Eval("description")%></h4>
                                    
                                    <asp:Button  ID="addtocart"  CommandArgument='<%#Eval("i_id")%>' runat="server" CommandName="Add" UseSubmitBehavior="false" CssClass="btn btn-primary"  Text="AddtoCart" />
                                    <asp:Button ID="buy" CommandArgument='<%#Eval("i_id")%>'  runat="server" CommandName="Buy" UseSubmitBehavior="false" CssClass="btn btn-primary float" Text="Buynow" />
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                 </asp:Repeater>
                
            </div>
            
        </div>
        </span>
</asp:Content>
