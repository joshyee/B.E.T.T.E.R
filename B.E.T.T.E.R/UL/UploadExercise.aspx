<%@ Page Title="Upload Exercise - B.E.T.T.E.R" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="UploadExercise.aspx.cs" Inherits="B.E.T.T.E.R.UL.UploadExercise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Upload Exercise</h1>
    <asp:Label ID="Label1" runat="server" Text="Please enter your daily exercise:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label2" runat="server" Text="PIN:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</asp:Content>
