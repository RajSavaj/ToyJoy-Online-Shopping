<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Sub_Category.aspx.cs" Inherits="Admin_Sub_Category" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
td span
{
	color:Black;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="banner">
        <h2>
            <a href="Users.aspx">Home</a> <i class="fa fa-angle-right"></i><span>Sub-category</span>
        </h2>
  </div>
    <div class="grid-form">
        <div class="grid-form1">
            <h3 id="forms-example" class="">
                Sub Category
            </h3>
            <form>
            <div class="form-group">
                <label for="exampleInputEmail1">
                    Category </label>
                <asp:DropDownList ID="catid" runat="server" CssClass="form-control"></asp:DropDownList>    
              
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">
                   Sub-Category Name</label>
                <asp:TextBox ID="sname" runat="server" TextMode="SingleLine" CssClass="form-control"
                    placeholder="Category Name"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <label for="exampleInputEmail1">
                   Sub-Category Image</label>
                <asp:FileUpload ID="flusub" runat="server"  CssClass="form-control" />
            </div>
            
            <asp:Button ID="btnsubcat" runat="server" Text="Add Category" 
                CssClass="btn btn-default" onclick="btnsubcat_Click"
               />
            </form>
        </div>
    </div>
    <div class="grid-system">
         <asp:DropDownList ID="drpselect" runat="server" CssClass="col-md-2 form-control" 
             AutoPostBack="True" 
             onselectedindexchanged="drpselect_SelectedIndexChanged"></asp:DropDownList>    
        <div class="horz-grid">
            <asp:GridView ID="grdsubcat" runat="server" AutoGenerateColumns="False" 
                onrowcancelingedit="grdsubcat_RowCancelingEdit" 
                onrowdeleting="grdsubcat_RowDeleting" onrowediting="grdsubcat_RowEditing" 
                onrowupdating="grdsubcat_RowUpdating" >
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
                            <asp:Label ID="ll" ForeColor="Black" runat="server" Text='<%#Eval("s_id")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                     <asp:TemplateField HeaderText="Name" HeaderStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Label ID="lblcname" runat="server" Text='<%#Eval("c_name")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                     <asp:TemplateField HeaderText="Name" HeaderStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Label ID="lblsname" runat="server" Text='<%#Eval("s_name")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_scname" runat="server" Text='<%#Eval("s_name")%>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Image" HeaderStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("s_img")%>'
                                Height="80px" Width="100px" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Image ID="img_user" runat="server" ImageUrl='<%#Eval("s_img")%>'
                                Height="80px" Width="100px" /><br />
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
    
</asp:Content>

