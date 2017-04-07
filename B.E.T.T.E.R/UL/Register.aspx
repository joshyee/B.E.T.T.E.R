<%@ Page Title="" Language="C#" MasterPageFile="~/NonMember.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="B.E.T.T.E.R.UL.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="centered">
        <asp:TextBox ID="email" runat="server" placeholder="Email"></asp:TextBox>
        <asp:TextBox ID="parentemail" runat="server" placeholder="Parent Email"></asp:TextBox>
        <asp:TextBox ID="newpassword" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="confirmpassword" runat="server"  placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
        <asp:Button ID="register" runat="server" Text="Register" />
    </div>
</asp:Content>
