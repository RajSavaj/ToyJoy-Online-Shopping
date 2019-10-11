<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="bill" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Login Page</title>
<style type="text/css">
.navbar
{
	position:inherit;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div id="banner"></div>
        <div class="container">
        </div>
        <div class="container"></div>
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s">
                        <span><strong>B</strong>ill</span>
                     </h2>
                </div>
            </div>
    
    <div class="container" style="height: 312px">
        <div class="container-fluid">
           
                 
                   <table border="3" align="center" cellspacing="3" cellpadding="10"> 
                    <tr>
                       <td width="100px">Date</td>
                        <td width="100px"><asp:Label ID="dt" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="height: 38px; width: 250px;">Name</td>
                        <td><asp:Label ID="name" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                       <td style="height: 38px; width: 250px;">Price</td>
                        <td><asp:Label ID="price" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                       <td colspan="2"></td>

                    </tr>
                 </table>
            </div>
        </div>
 

</asp:Content>

