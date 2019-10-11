<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="TypesofToys.aspx.cs" Inherits="TypesofToys" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="banner">
        <div class="container">
        </div>
    </div>
    <div class="padding100" id="blog">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s">
                        <span><strong>T</strong>ypes of toys</span>
                     </h2>
                </div>
            </div>
            <!-- /.row -->
            <asp:Repeater ID="rpt" runat="server">
                <ItemTemplate>
                    <div class="row">
                        <div class="col-md-7">
                            <a href="#">
                                <img class="img-responsive animated wow fadeInUp" data-wow-delay="0.2s" src='<%#Eval("c_img").ToString().Substring(2, Eval("c_img").ToString().Length - 2)%>'
                                    alt="">
                            </a>
                        </div>
                        <div class="col-md-5 animated wow fadeInRight" data-wow-delay="0.4s">
                            <h3>
                                <strong><%#Eval("c_name")%></strong></h3>
                            <p>
                               <%#Eval("c_desc")%></p>
                            <a class="btn btn-success" href='Sub.aspx?sid=<%#Eval("c_id")%>'>More <span class="glyphicon glyphicon-chevron-right">
                            </span></a>
                        </div>
                    </div>
                    <hr />
                </ItemTemplate>   
            </asp:Repeater>    
            <div class="row">
                <!-- /.row -->
            </div>
        </div>
        </div>
        <!-- /.container -->
</asp:Content>
