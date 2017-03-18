<%@ Page Title="" Language="C#" MasterPageFile="~/BETTER.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="B.E.T.T.E.R.UL.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Email:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        Parent Email:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </p>
    <p>
        New Password:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        Confirm Password:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Register" />
    </p>
</asp:Content>
