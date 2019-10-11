<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="reg.aspx.cs" Inherits="reg" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Registration page</title>
    <style type="text/css">
        .navbar
        {
            position: inherit;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container" style="margin-bottom: 20px;">
        <div class="container-fluid">
            <div>
                <h1 style="text-align: center">
                    Sing UP
                </h1>
                <h5 style="text-align: center;font-size:20px"><asp:Label ID="success" runat="server"></asp:Label></h5>
                <div class="col-md-offset-3 col-md-6">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <asp:TextBox ID="Firstname" runat="server" TextMode="SingleLine" CssClass="form-control"
                                placeholder="Firstname"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rname" runat="server" ControlToValidate="Firstname" ErrorMessage="Please Enter Name"  Display="Dynamic"></asp:RequiredFieldValidator> 
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <asp:TextBox ID="Middlename" runat="server" TextMode="SingleLine" CssClass="form-control"
                                placeholder="Middlename"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rMiddlename" runat="server" ControlToValidate="Middlename" Display="Dynamic" ErrorMessage="Please Middle Name"></asp:RequiredFieldValidator> 
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <asp:TextBox ID="Lastname" runat="server" TextMode="SingleLine" CssClass="form-control"
                                placeholder="Lastname"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rLastname" runat="server" ControlToValidate="Lastname" Display="Dynamic" ErrorMessage="Please Last Name"></asp:RequiredFieldValidator> 
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
                            <asp:TextBox ID="City" runat="server" TextMode="SingleLine" CssClass="form-control"
                                placeholder="City"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="Cityname" runat="server" ControlToValidate="City" Display="Dynamic" ErrorMessage="please cityname"></asp:RequiredFieldValidator> 
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                            <asp:TextBox ID="Mobileno" runat="server" TextMode="SingleLine" CssClass="form-control"
                                placeholder="Mobileno"></asp:TextBox>
                        </div>
                        <asp:RegularExpressionValidator ID="rMobileno" ValidationExpression="\d{10}" runat="server" ControlToValidate="Mobileno" Display="Dynamic" ErrorMessage="please Mobileno"></asp:RegularExpressionValidator>
                                         </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                            <asp:TextBox ID="DOB" runat="server" TextMode="SingleLine" CssClass="form-control"
                                placeholder="DOB(DD/MM/YYY)"></asp:TextBox>
                        </div>
                        <asp:CompareValidator id="checkDob" runat="server" ControlToValidate="DOB" ErrorMessage="Please Enter Correct Date" Display="Dynamic"  Type="Date" Operator="LessThan"></asp:CompareValidator>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <asp:TextBox ID="Email" runat="server" TextMode="SingleLine" CssClass="form-control"
                                placeholder="Email"></asp:TextBox>
                        </div>
                        <asp:RegularExpressionValidator ID="rEmail" ValidationExpression="\S+@\S+\.\S+" runat="server" ControlToValidate="Email" Display="Dynamic" ErrorMessage="please Email"></asp:RegularExpressionValidator>
                        
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control"
                                placeholder="Password"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="rpassword" runat="server" ControlToValidate="password" Display="Dynamic" ErrorMessage="please enter password"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <asp:TextBox ID="pass" runat="server" TextMode="password" CssClass="form-control"
                                placeholder="Confirm Password"></asp:TextBox>
                        </div>
                        <asp:CompareValidator ID="CompareValidator1" ControlToCompare="password" ControlToValidate="pass" Display="Dynamic" runat="server" ErrorMessage="Do not match with password"></asp:CompareValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-offset-3 col-md-6">
                        <asp:Button runat="server" ID="btnregister" 
                            CssClass="btn btn-block btn-success" Text="Registration" onclick="rg_click"
                            />
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
