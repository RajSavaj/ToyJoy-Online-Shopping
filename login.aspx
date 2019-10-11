<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

<title>Login Page</title>
<style type="text/css">
.navbar
{
	position:inherit;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 
 <div class="container" style="height:312px">
        <div class="container-fluid">
        
        <div>
            <h1 style="text-align:center">
                Login
            </h1>
            <h4 style="font-size:20px;color:Red;text-align:center"><asp:Label ID="err" runat="server"></asp:Label></h4>
            <div class="col-md-offset-3 col-md-6">
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="username" runat="server" autocomplete="off" TextMode="SingleLine" CssClass="form-control"
                            placeholder="Username"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="form-control"
                            placeholder="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-offset-3 col-md-6">
                        <asp:Button runat="server" CssClass="btn btn-block btn-success" Text="Login" 
                            ID="btnlogin" onclick="btnlogin_Click" />
                    </div>
                </div>
                             
                                 <p style="text-align:center">Forget Password &nbsp; <a href="reg.aspx">Create Account </a></p>
            </div>
        </div>
        </div>
        
    </div>
</asp:Content>
