<%@ Page Title="Login - B.E.T.T.E.R" Language="C#" MasterPageFile="~/NonMember.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="B.E.T.T.E.R.UL.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="centered">
        <asp:TextBox ID="username" runat="server" placeholder="Username or Email"></asp:TextBox>
        <asp:TextBox ID="password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
        <asp:Button ID="login" runat="server" OnClick="btnValidateLogin_Click" Text="Log In" />
    </div>
</asp:Content>
