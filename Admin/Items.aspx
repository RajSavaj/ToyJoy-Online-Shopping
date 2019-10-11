<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Items.aspx.cs" Inherits="Admin_Items" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="banner">
        <h2>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <a href="Users.aspx">Home</a> <i class="fa fa-angle-right"></i><span>Category</span>
        </h2>
    </div>
     <div class="grid-form">
        <div class="grid-form1">
            <h3 id="forms-example" class="">
                Add Items
            </h3>
            <form>
            
            <div class="form-group">
                <label for="exampleInputEmail1">
                    Category </label>
                 <asp:DropDownList ID="cat" runat="server" AutoPostBack="true" 
                    CssClass="form-control" onselectedindexchanged="cat_SelectedIndexChanged">
                
                 </asp:DropDownList>
            </div>
            
            <div class="form-group">
                <label for="exampleInputEmail1">
                   Sub Category </label>
                 <asp:DropDownList ID="subcat" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            
            <div class="form-group">
                <label for="exampleInputEmail1">
                    Name</label>
                <asp:TextBox ID="name" runat="server" TextMode="SingleLine" CssClass="form-control"
                    placeholder="Item Name"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <label for="exampleInputEmail1">
                    Description</label>
                <asp:TextBox ID="desc" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"
                    placeholder="Category Name"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <label for="exampleInputEmail1">
                    Price</label>
                <asp:TextBox ID="price" runat="server" TextMode="SingleLine" CssClass="form-control"
                    placeholder="Item Price"></asp:TextBox>
            </div>
            
             <div class="form-group">
                <label for="exampleInputEmail1">
                    Qantity</label>
                <asp:TextBox ID="qty" runat="server" TextMode="SingleLine" CssClass="form-control"
                    placeholder="Item Qantity"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <label for="exampleInputEmail1">
                    Image Upload</label>
                <asp:FileUpload ID="iimg" runat="server" CssClass="form-control" />
            </div>
            <asp:Button ID="btncat" runat="server" Text="Add Item" 
                CssClass="btn btn-default" onclick="btncat_Click"
              />
            </form>
        </div>
    </div>

</asp:Content>

