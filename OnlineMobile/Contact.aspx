<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OnlineMobile.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
          <form id="contactForm" runat="server">
              <div class="offset-lg-4 offset-sm-4 offset-md-4">
                <h2>Send Us Email</h2>
                <p>Give us a call, shoot us an email, or drop in for more information</p>

                
                    <div class="form-group">
                    <asp:Label ID="lblName" runat="server" Text="Full Name" AssociatedControlID="RequiredFieldValidator1"></asp:Label>
                    <asp:TextBox ID="Name" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ControlToValidate="Name" CssClass="danger"></asp:RequiredFieldValidator>
                    </div>
                   
                    <div class="form-group">
                    <asp:Label ID="lblEmail" runat="server" Text="Email Id"></asp:Label>
                    <asp:TextBox ID="Email" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required" ControlToValidate="Email" CssClass="danger"></asp:RequiredFieldValidator>
                        
                    </div>

                    <div class="form-group">
                    <asp:Label ID="lblPhone" runat="server" Text="Cell"></asp:Label>
                    <asp:TextBox ID="Phone" runat="server" CssClass="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Phone is required" ControlToValidate="Phone" CssClass="danger"></asp:RequiredFieldValidator>
                    </div>


                    <div class="form-group">
                    <asp:Label ID="lblMessage" runat="server" Text="Message"></asp:Label>
                    <asp:TextBox ID="Message" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnContact" runat="server" Text="Contact" CssClass="btn btn-success"/><br/><br />
                    
            </div>
          </form>
            
                    
            </div>
</asp:Content>
