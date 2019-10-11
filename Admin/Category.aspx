<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true"
    CodeFile="Category.aspx.cs" Inherits="Admin_Category" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<style>
td span
{
	color:Black;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner">
        <h2>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <a href="Users.aspx">Home</a> <i class="fa fa-angle-right"></i><span>Category</span>
        </h2>
    </div>
    <div class="grid-form">
        <div class="grid-form1">
            <h3 id="forms-example" class="">
                Add Category
            </h3>
            <form>
            <div class="form-group">
                <label for="exampleInputEmail1">
                    Category Name</label>
                <asp:TextBox ID="cname" runat="server" TextMode="SingleLine" CssClass="form-control"
                    placeholder="Category Name"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">
                    Description</label>
                <asp:TextBox ID="desc" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"
                    placeholder="Category Name"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">
                    Image Upload</label>
                <asp:FileUpload ID="cimg" runat="server" CssClass="form-control" />
            </div>
            <asp:Button ID="btncat" runat="server" Text="Add Category" CssClass="btn btn-default"
                OnClick="btncat_Click" />
            </form>
        </div>
    </div>
    <div class="grid-system">
        <div class="horz-grid">
        <asp:GridView ID="grdcat" runat="server" AutoGenerateColumns="False" 
                onrowcancelingedit="grdcat_RowCancelingEdit" onrowdeleting="grdcat_RowDeleting" 
                onrowediting="grdcat_RowEditing" onrowupdating="grdcat_RowUpdating" >
            <Columns>
                <asp:TemplateField HeaderStyle-Width="150px">
                        <ItemTemplate>
                            <asp:LinkButton ID="LkB1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                            <asp:LinkButton ID="LkB11" runat="server" CommandName="Delete">Delete</asp:LinkButton>  
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:LinkButton ID="LkB2" runat="server" CommandName="Update">Update</asp:LinkButton>
                            <asp:LinkButton ID="LkB3" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                        </EditItemTemplate>
                 </asp:TemplateField>
                 
                 <asp:TemplateField HeaderText="Id" HeaderStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Label ID="ll" ForeColor="Black" runat="server" Text='<%#Eval("c_id")%>'></asp:Label>
                        </ItemTemplate>
                  </asp:TemplateField>
                  
                   <asp:TemplateField HeaderText="Name" HeaderStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("c_name")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_Name" runat="server" Text='<%#Eval("c_name")%>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                     
                     <asp:TemplateField HeaderText="Description" HeaderStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Label ID="lbldesc" runat="server" Text='<%#Eval("c_desc")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_desc" runat="server" Text='<%#Eval("c_desc")%>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Image" HeaderStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("c_img")%>'
                                Height="80px" Width="100px" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Image ID="img_user" runat="server" ImageUrl='<%#Eval("c_img")%>'
                                Height="80px" Width="100px" /><br />
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </EditItemTemplate>
                    </asp:TemplateField>
            </Columns>
        </asp:GridView>
        </div>
    </div>
</asp:Content>
