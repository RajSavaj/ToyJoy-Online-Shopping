<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="cart.aspx.cs" Inherits="cart" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
                        <img src="img/cart.png" height="54" width="54" />view cart</h2>
               
            </div>
        </div>
       
    <asp:GridView ID="grdview" runat="server" AutoGenerateColumns="False" 
        onrowdeleting="grdview_RowDeleting" >
         <Columns>
             <asp:TemplateField HeaderStyle-Width="150px">
                    <ItemTemplate>
                       <asp:LinkButton ID="LkB11" runat="server" CommandName="Delete">Delete</asp:LinkButton>  
                    </ItemTemplate>
             </asp:TemplateField>
             
             <asp:TemplateField HeaderText="Cart Id" HeaderStyle-Width="200px">
                  <ItemTemplate>
                      <asp:Label ID="l1" ForeColor="Black" runat="server" Text='<%#Eval("crt_id")%>'></asp:Label>
                  </ItemTemplate>
             </asp:TemplateField>
             
             <asp:TemplateField HeaderText="Date" HeaderStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Label ID="l2" ForeColor="Black" runat="server" Text='<%#Eval("date")%>'></asp:Label>
                        </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Quantity" HeaderStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Label ID="l3" ForeColor="Black" runat="server" Text='<%#Eval("quantity")%>'></asp:Label>
                        </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Item Name" HeaderStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Label ID="l4" ForeColor="Black" runat="server" Text='<%#Eval("item_name")%>'></asp:Label>
                        </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Item Image" HeaderStyle-Width="200px">
                        <ItemTemplate>
                        <img height="420px" width="420px" src='<%#Eval("item_image").ToString().Substring(2, Eval("item_image").ToString().Length - 2)%>'
                        class="img-responsive" alt="">
                           
                        </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price" HeaderStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Label ID="l6" ForeColor="Black" runat="server" Text='<%#Eval("price")%>'></asp:Label>
                        </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="ACTION" HeaderStyle-Width="200px">
                        <ItemTemplate>
                        <a href="checkout.aspx?cid=<%#Eval("crt_id")%>" class="btn btn-success">Checkout</a>
                            
                        </ItemTemplate>
            </asp:TemplateField>
         </Columns>
    </asp:GridView>
    <center>
    <br />
        <asp:Button ID="btncontinue" runat="server" Text="Continue Shopping" OnClick="btncontinue_Click"
            CssClass="btn btn-success" />
        </center>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
