<%@ Page Title="Register - B.E.T.T.E.R" Language="C#" MasterPageFile="~/NonMember.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="B.E.T.T.E.R.UL.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 147px;
        }
        .auto-style4 {
            width: 252px;
        }
        .auto-style5 {
            width: 7px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please correct these entries:" />
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="lblError" runat="server" Text="User account already exists, please log in" Visible="False"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Username</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtUsername" runat="server" ToolTip="Enter your new username"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" class="validatorMessage" runat="server" ControlToValidate="txtUsername" ErrorMessage="First name" ValidationGroup="RegisterInfoGroup">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Username is not valid" ValidationExpression="^[a-zA-Z]+$" ControlToValidate="txtUsername" ValidationGroup="RegisterInfoGroup"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Email</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtEmail" runat="server" ToolTip="Enter your email address"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" class="validatorMessage" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email address" ValidationGroup="RegisterInfoGroup">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email address is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="RegisterInfoGroup">Email address is not valid</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">New Password</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" ToolTip="Enter a new password"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" class="validatorMessage" runat="server" ControlToValidate="txtPwd" ErrorMessage="New password" ValidationGroup="RegisterInfoGroup">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPwd" ErrorMessage="Password length must be at least 8 characers long" ValidationExpression="^[a-zA-Z0-9\s]{8,50}$" ValidationGroup="RegisterInfoGroup"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Confirm Password</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password" ToolTip="Re-enter your new password"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" class="validatorMessage" runat="server" ControlToValidate="txtConfirmPwd" ErrorMessage="Confirm password" ValidationGroup="RegisterInfoGroup">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtConfirmPwd" ErrorMessage="Password not matching, please try again" ValidationGroup="RegisterInfoGroup">Password not matching, please try again</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Parent Email</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtParentEmail" runat="server" ToolTip="Enter your parent's email address"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" class="validatorMessage" runat="server" ControlToValidate="txtParentEmail" ErrorMessage="Parent email address" ValidationGroup="RegisterInfoGroup">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtParentEmail" ErrorMessage="Parent email address is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="RegisterInfoGroup">Parent email address is not valid</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" ToolTip="Click to register" />
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>
   
</asp:Content>
