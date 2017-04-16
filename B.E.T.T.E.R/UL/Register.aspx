<%@ Page Title="Register - B.E.T.T.E.R" Language="C#" MasterPageFile="~/NonMember.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="B.E.T.T.E.R.UL.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="centered">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="email" runat="server" placeholder="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="emailRequired" runat="server" ErrorMessage="Please enter a valid email address" ControlToValidate="email" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="parentemail" runat="server" placeholder="Parent Email"></asp:TextBox>
        <asp:TextBox ID="newpassword" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="confirmpassword" runat="server"  placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
        <asp:Button ID="registerUser" runat="server" Text="Register" OnClick="registerUser_Click" />
    </div>
</asp:Content>
