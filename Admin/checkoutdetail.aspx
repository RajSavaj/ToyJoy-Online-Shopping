﻿<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="checkoutdetail.aspx.cs" Inherits="Admin_Viewcheckoutdetail" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div class="banner">
        <h2>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <a href="Users.aspx">Home</a> <i class="fa fa-angle-right"></i><span>Checkout detail</span>
        </h2>
    </div>
    <br/>
    <asp:GridView ID="GridView1" runat="server"  DataKeyNames="check_id" DataSourceID="s1" AutoGenerateDeleteButton="true"
        onselectedindexchanged="GridView1_SelectedIndexChanged">
    </asp:GridView>
    
    
    <div>
    
   
        <asp:SqlDataSource ID="s1" runat="server" ConnectionString="Data Source=DESKTOP-F3FGAT3\SQLEXPRESS;Initial Catalog=P12_toyjoy;Integrated Security=True"
        ProviderName="System.Data.SqlClient" SelectCommand="select * from Checkout" DeleteCommand="delete from Checkout where cid=@cid"> 
        </asp:SqlDataSource> 
    
    </div>

</asp:Content>

