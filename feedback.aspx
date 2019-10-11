<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" Title="Untitled Page" %>


<asp:Content ID="Content" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div id="banner"></div>
        <div class="container">
      
      
            <div>      
             <div class="center">  
                <h2>Drop Your Message</h2>
               
            </div> 
           
              <div class="row contact-wrap"> 
                <div class="status alert alert-success" style="display: none"></div>
            
                

  <center>
                 
    <table class="pp_content_container" >
    
  
        <tr><td ></td>
            <td style="height: 32px">
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Font-Bold="false"  Font-Size="Large">Name</asp:Label>
            </td>
            <td style="height: 32px">
                <asp:TextBox ID="txtname" runat="server" CssClass="form-control" Width="422px" Height="36px"></asp:TextBox>
                <br />
            </td>
            <td style="height: 32px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter Your Name"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        
        <tr><td style="width: 282px">&nbsp;</td>
            <td style="height: 68px">
                <asp:Label ID="Label3" runat="server" ForeColor="black"  Font-Bold="false"  Font-Size="Large">Mobile</asp:Label>
            </td>
            <td style="height: 68px">
                <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control"   Width="422px" Height="36px"></asp:TextBox>
                <br />
            </td>
            <td style="height: 68px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtmobile" ErrorMessage="Enter Mobile No"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtmobile" ErrorMessage="Enter mob no in proper formate i.e +91-9876543210" 
                    ValidationExpression="\+\d{2}-\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr><td style="width: 282px"></td>
            <td style="height: 68px">
                <asp:Label ID="Label4" runat="server" ForeColor="black"  Font-Bold="false"  Font-Size="Large"> Message </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine" Font-Bold="True" 
                    CssClass="form-control"   Width="422px" Height="36px"></asp:TextBox>
                <br />
            </td>
            
        </tr>
        <tr>
        <td></td>
        <td></td>
            <td style="text-align: center; height: 33px;">
               <asp:Button ID="btnsubmit" runat="server" Text="Submit"  CssClass="btn btn-block btn-success" 
                    onclick="btnsubmit_Click"></asp:Button> 
                
            </td>
        </tr>
    </table>
   
    </center>
    
    </div>
     </div><!--/.container-->
     
     

</asp:Content>

