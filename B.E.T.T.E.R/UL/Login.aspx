<%@ Page Title="Login - B.E.T.T.E.R" Language="C#" MasterPageFile="~/NonMember.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="B.E.T.T.E.R.UL.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            height: 22px;
            width: 7px;
        }
        .auto-style8 {
            height: 22px;
            width: 277px;
        }
        .auto-style9 {
            width: 277px;
        }
        .auto-style10 {
            width: 7px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="auto-style2">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please correct these entries:" />
            </td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="lblError" runat="server" Text="Incorrect username or password" Visible="False"></asp:Label>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Username</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="Password">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
            </td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
