<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CartLists.aspx.cs" Inherits="OnlineMobile.CartLists" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="productForm" runat="server">
        <div class="form-group">
                <div class="col-sm-12"><asp:ListBox ID="lstCart" runat="server" CssClass="form-control"></asp:ListBox><br />
                     <asp:HyperLink ID="HomeId" runat="server" href="Home.aspx" CssClass="btn btn-success">Continue Shopping</asp:HyperLink>
                    <asp:Button ID="btnRemove" runat="server" OnClick="RemoveMobile" Text="Remove Mobile" CssClass="btn btn-success" />
            <asp:Button ID="btnEmpty" runat="server" OnClick="EmptyList" Text="Empty Mobile List" CssClass="btn btn-success" />
                </div>
            
            </div>
    </form>
</asp:Content>
