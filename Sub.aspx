<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Sub.aspx.cs" Inherits="viewshowtoys" Title="Untitled Page" %>

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
                    <span><strong>o</strong>ur toys</span>
                </h2>
            </div>
        </div>
    </div>
    <div class="row"> 
    <!-- Box-1 -->
    <asp:Repeater ID="rpt" runat="server">
        <ItemTemplate>
            <div class="col-md-4 col-sm-6 portfolio-item wow zoomIn animated" data-wow-duration="1500ms"
                data-wow-delay="100ms">
                <a href="Buynow1.aspx?iid=<%#Eval("s_id")%>" class="portfolio-link" data-toggle="modal">
                    <div class="portfolio-hover">
                        <div class="portfolio-hover-content">
                          
                        </div>
                    </div>
                    <img height="420px" width="420px" src='<%#Eval("s_img").ToString().Substring(2, Eval("s_img").ToString().Length - 2)%>'
                        class="img-responsive" alt="">
                </a>
                <div class="portfolio-caption">
                    <h3>
                        <strong><%#Eval("s_name")%></strong>
                     </h3>
                     
                    <a class="btn btn-success" href="Buynow.aspx?iid=<%#Eval("s_id")%>">More <span class="glyphicon glyphicon-chevron-right">
                    </span></a>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    </div>
    <!-- Box-1 -->
</asp:Content>
