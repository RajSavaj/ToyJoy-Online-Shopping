<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="checkout" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="banner"></div>
        <div class="container">
        </div>
        <div class="container"></div>
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s">
                        <span><strong>c</strong>heckout</span>
                     </h2>
                </div>
            </div>
        <center>
        <table>
            <tr>
                <td>
                    <table cellpadding="9">
                        <tr>
                            <td style="width: 176px">
                                <asp:Label ID="Label1" runat="server" Text="Username" Font-Bold="True"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtunm" runat="server" ReadOnly="true"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 176px; height: 11px">
                                <asp:Label ID="Label2" runat="server" Text="Place Address" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="height: 11px">
                                <asp:TextBox ID="txtadd" runat="server"></asp:TextBox>
                            </td>
                            <td style="width: 178px; height: 11px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtadd"
                                    Text="enter order place address"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator
                                        ID="RegularExpressionValidator1" runat="server" Text="Enter proper adderss" ControlToValidate="txtadd"
                                        ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 176px">
                                <asp:Label ID="Label3" runat="server" Text="city" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="height: 11px">
                                <asp:TextBox ID="txtcity" runat="server" ReadOnly="true"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 176px">
                                <asp:Label ID="Label4" runat="server" Text="Email" Font-Bold="True"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtemail" runat="server" ReadOnly="true"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 176px">
                                <asp:Label ID="Label5" runat="server" Text="Mobileno" Font-Bold="True"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtmobile"
                                    ErrorMessage="Enter mob no in proper formate i.e +91-9876543210" ValidationExpression="\+\d{2}-\d{10}"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 176px">
                                <asp:RadioButton ID="RadioButton1" runat="server"  Text="Case on Delivery" 
                                 GroupName="Pay"  />
                             
                            </td>
                   
                        </tr>
                        
                            <td colspan="2">
                                <asp:Button ID="btnbill" runat="server" Text="Bill"  CssClass="btn btn-success"
                                    OnClick="btnbill_Click" />
                            </td>
                            </table>
                      
                  
             </td>
            </tr>
    </table>
    </center>
</asp:Content>

