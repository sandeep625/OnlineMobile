<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MobileDetails.aspx.cs" Inherits="OnlineMobile.MobileDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="mobileDetailsForm" runat="server">
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Mobiles] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="Id" Name="Id" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id" GroupItemCount="3">
        <AlternatingItemTemplate>
            <td runat="server" style="">Id:
                <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />
                mobile_name:
                <asp:Label Text='<%# Eval("mobile_name") %>' runat="server" ID="mobile_nameLabel" /><br />
                brand:
                <asp:Label Text='<%# Eval("brand") %>' runat="server" ID="brandLabel" /><br />
                features:
                <asp:Label Text='<%# Eval("features") %>' runat="server" ID="featuresLabel" /><br />
                image:
                <asp:Label Text='<%# Eval("image") %>' runat="server" ID="imageLabel" /><br />
                price:
                <asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" /><br />
                color:
                <asp:Label Text='<%# Eval("color") %>' runat="server" ID="colorLabel" /><br />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="">Id:
                <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel1" /><br />
                mobile_name:
                <asp:TextBox Text='<%# Bind("mobile_name") %>' runat="server" ID="mobile_nameTextBox" /><br />
                brand:
                <asp:TextBox Text='<%# Bind("brand") %>' runat="server" ID="brandTextBox" /><br />
                features:
                <asp:TextBox Text='<%# Bind("features") %>' runat="server" ID="featuresTextBox" /><br />
                image:
                <asp:TextBox Text='<%# Bind("image") %>' runat="server" ID="imageTextBox" /><br />
                price:
                <asp:TextBox Text='<%# Bind("price") %>' runat="server" ID="priceTextBox" /><br />
                color:
                <asp:TextBox Text='<%# Bind("color") %>' runat="server" ID="colorTextBox" /><br />
                <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" /><br />
                <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" /><br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr runat="server" id="itemPlaceholderContainer">
                <td runat="server" id="itemPlaceholder"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">Id:
                <asp:TextBox Text='<%# Bind("Id") %>' runat="server" ID="IdTextBox" /><br />
                mobile_name:
                <asp:TextBox Text='<%# Bind("mobile_name") %>' runat="server" ID="mobile_nameTextBox" /><br />
                brand:
                <asp:TextBox Text='<%# Bind("brand") %>' runat="server" ID="brandTextBox" /><br />
                features:
                <asp:TextBox Text='<%# Bind("features") %>' runat="server" ID="featuresTextBox" /><br />
                image:
                <asp:TextBox Text='<%# Bind("image") %>' runat="server" ID="imageTextBox" /><br />
                price:
                <asp:TextBox Text='<%# Bind("price") %>' runat="server" ID="priceTextBox" /><br />
                color:
                <asp:TextBox Text='<%# Bind("color") %>' runat="server" ID="colorTextBox" /><br />
                <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" /><br />
                <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" /><br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="">
               <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" visible="false"/><br />
               <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' CssClass="mobileDiv"/><br />
               
               <b>
                <asp:Label Text='<%# Eval("mobile_name") %>' runat="server" ID="mobile_nameLabel" />
               </b> <br />
               
                <asp:Label Text='<%# Eval("brand") %>' runat="server" ID="brandLabel" /><br />
               
                <asp:Label Text='<%# Eval("features") %>' runat="server" ID="featuresLabel" /><br />
               
                $ <asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" /><br />
               
                <asp:Label Text='<%# Eval("color") %>' runat="server" ID="colorLabel" /><br />
                <asp:Button runat="server" Text="Add To Cart" CssClass="btn btn-success form-control btnHome" CommandArgument='<%# Eval("Id") %>' onclick="addtocart" CommandName="addCart"/>
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="groupPlaceholderContainer" style="" border="0">
                            <tr runat="server" id="groupPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="">Id:
                <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />
                
               <b>
                   <asp:Label Text='<%# Eval("mobile_name") %>' runat="server" ID="mobile_nameLabel" />
               </b> <br />
               
                <asp:Label Text='<%# Eval("brand") %>' runat="server" ID="brandLabel" /><br />
              
                <asp:Label Text='<%# Eval("features") %>' runat="server" ID="featuresLabel" /><br />
               
                <asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" /><br />
                
                <asp:Label Text='<%# Eval("color") %>' runat="server" ID="colorLabel" /><br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
    </form>
   
</asp:Content>
