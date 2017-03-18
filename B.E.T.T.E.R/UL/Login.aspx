<%@ Page Title="" Language="C#" MasterPageFile="~/BETTER.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="B.E.T.T.E.R.UL.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Username:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    Password:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    &nbsp;<br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" />
    <br />
    <br />
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
    </asp:PasswordRecovery>
</asp:Content>
