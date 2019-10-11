<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Showfeedback.aspx.cs" Inherits="Admin_Showfeedback" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="banner">
        <h2>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:conn %>" 
                DeleteCommand="DELETE FROM [feedback] WHERE [f_id] = @f_id" 
                InsertCommand="INSERT INTO [feedback] ([name], [mobile], [message]) VALUES (@name, @mobile, @message)" 
                SelectCommand="SELECT * FROM [feedback]" 
                UpdateCommand="UPDATE [feedback] SET [name] = @name, [mobile] = @mobile, [message] = @message WHERE [f_id] = @f_id">
                <DeleteParameters>
                    <asp:Parameter Name="f_id" Type="Int64" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="mobile" Type="String" />
                    <asp:Parameter Name="message" Type="String" />
                    <asp:Parameter Name="f_id" Type="Int64" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="mobile" Type="String" />
                    <asp:Parameter Name="message" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <a href="Users.aspx">Home</a> <i class="fa fa-angle-right"></i><span>Feadback</span>
        </h2>
    </div>

<center><h1>Show Feedback</h1>


   <asp:GridView ID="GridView1" runat="server" DataKeyNames="f_id" DataSourceID="SqlDataSource1"  
         Font-Bold="False" Font-Underline="True" 
         ShowFooter="True" Height="247px" BorderColor="#CCCCCC" BorderWidth="7px" 
         Width="624px" onselectedindexchanged="GridView1_SelectedIndexChanged" 
        AutoGenerateColumns="False">
        <EmptyDataRowStyle BackColor="#CCCCCC" BorderColor="#CCCCCC" BorderWidth="7px" 
            Width="7px" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="f_id" HeaderText="f_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="f_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
            <asp:BoundField DataField="message" HeaderText="message" 
                SortExpression="message" />
        </Columns>
        <EditRowStyle BorderColor="#CCCCCC" BorderWidth="7px" />
    </asp:GridView>
    <asp:SqlDataSource ID="s1" runat="server" 
    ConnectionString="Data Source=DESKTOP-F3FGAT3\SQLEXPRESS;Initial Catalog=toyjoy;Integrated Security=True"
    ProviderName="System.Data.SqlClient" SelectCommand="select * from feedback"
    DeleteCommand="delete from feedback where Eid=@Eid">
    </asp:SqlDataSource></center>
    
   
    </asp:Content>
 
