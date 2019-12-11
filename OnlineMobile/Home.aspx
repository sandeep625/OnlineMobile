<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OnlineMobile.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <form id="Form1" runat="server">
          <div class="row">
        <div class="col-lg-12 col-md-12">
            <div id="banner"></div>    
            <br /><br />
            <h2>Popular Mobiles</h2>
            </div>
              
              <asp:ListView ID="ListView1" runat="server" DataSourceID="AllMobiles" DataKeyNames="Id" GroupItemCount="3">
              <GroupTemplate>
                      <tr runat="server" id="itemPlaceholderContainer">
                          <td runat="server" id="itemPlaceholder"></td>
                      </tr>
                  </GroupTemplate>
                 
                  <ItemTemplate>
                      <td runat="server" style="">
                          
                          <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" visible="false"/><br />
                          <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' CssClass="mobileDiv"/><br />
                          <b>Mobile:</b>
                          <asp:Label Text='<%# Eval("mobile_name") %>' runat="server" ID="mobile_nameLabel" /><br />
                          <b>Brand : </b>
                          <asp:Label Text='<%# Eval("brand") %>' runat="server" ID="brandLabel" /><br />
                         <b>Features : </b>
                          <asp:Label Text='<%# Eval("features") %>' runat="server" ID="featuresLabel" /><br />
                         <b>Price : </b>$ 
                          <asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" /><br />
                          <b>Colour : </b>
                          <asp:Label Text='<%# Eval("color") %>' runat="server" ID="colorLabel" /><br />
                            <asp:Button runat="server" Text="Buy" CssClass="btn btn-success form-control btnHome" CommandArgument='<%# Eval("Id") %>' onclick="MobileDetail"/>
                      </td>
                  </ItemTemplate>
                  <LayoutTemplate>
                      <table runat="server">
                          <tr runat="server">
                              <td runat="server">
                                  <table runat="server" id="groupPlaceholderContainer" border="0">
                                      <tr runat="server" id="groupPlaceholder"></tr>
                                  </table>
                              </td>
                          </tr>
                          <tr runat="server">
                              <td runat="server" style=""></td>
                          </tr>
                      </table>
                  </LayoutTemplate>
                  
              </asp:ListView>





              <asp:SqlDataSource runat="server" ID="AllMobiles" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Mobiles]"></asp:SqlDataSource>
          </div>
       </form>
</asp:Content>
