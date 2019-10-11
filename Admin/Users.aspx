<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Admin_Users" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="banner">
        <h2>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <a href="Users.aspx">Home</a> <i class="fa fa-angle-right"></i><span>User</span>
        </h2>
    </div>
          
     <br />           
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="Id" DataSourceID="user">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
            ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Fnam" HeaderText="Fnam" SortExpression="Fnam" />
        <asp:BoundField DataField="Mname" HeaderText="Mname" SortExpression="Mname" />
        <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
        <asp:BoundField DataField="mno" HeaderText="mno" SortExpression="mno" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
        <asp:BoundField DataField="Rdate" HeaderText="Rdate" SortExpression="Rdate" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="user" runat="server" 
    ConnectionString="<%$ ConnectionStrings:conn %>" 
    SelectCommand="SELECT * FROM [User]" 
        DeleteCommand="DELETE FROM [User] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [User] ([Fnam], [Mname], [Lname], [City], [Dob], [mno], [Email], [Pass], [Rdate]) VALUES (@Fnam, @Mname, @Lname, @City, @Dob, @mno, @Email, @Pass, @Rdate)" 
        UpdateCommand="UPDATE [User] SET [Fnam] = @Fnam, [Mname] = @Mname, [Lname] = @Lname, [City] = @City, [Dob] = @Dob, [mno] = @mno, [Email] = @Email, [Pass] = @Pass WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int64" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="Fnam" Type="String" />
        <asp:Parameter Name="Mname" Type="String" />
        <asp:Parameter Name="Lname" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Dob" Type="String" />
        <asp:Parameter Name="mno" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Pass" Type="String" />
        <asp:Parameter Name="Id" Type="Int64" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="Fnam" Type="String" />
        <asp:Parameter Name="Mname" Type="String" />
        <asp:Parameter Name="Lname" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Dob" Type="String" />
        <asp:Parameter Name="mno" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Pass" Type="String" />
        <asp:Parameter DbType="Date" Name="Rdate" />
    </InsertParameters>
    </asp:SqlDataSource>


               
                
</asp:Content>

