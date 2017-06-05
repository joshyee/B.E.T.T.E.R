<%@ Page Title="Upload Exercise - B.E.T.T.E.R" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="UploadExercise.aspx.cs" Inherits="B.E.T.T.E.R.UL.UploadExercise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Upload Exercise</h1>
    
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style5">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please correct these entries:" />
            </td>
            <td class="auto-style10"><asp:Label ID="lblSuccess" runat="server" Text="You have successfully uploaded exercise points." Visible="False"></asp:Label></td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Exercise Points</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtXP" runat="server" ToolTip="Enter your daily exercise points"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtXP" ErrorMessage="Daily exercise" ValidationGroup="UploadInfoGroup">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Incorrect value, please enter a number" ValidationExpression="^[0-9]*$" ControlToValidate="txtXP" ValidationGroup="UploadInfoGroup"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">PIN</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPIN" runat="server" ToolTip="Enter the PIN sent to parent's email address"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPIN" ErrorMessage="PIN that was sent to parent's email" ValidationGroup="UploadInfoGroup">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Incorrect value, please enter the 4-digit number that was sent to parent's email" ValidationExpression="^[0-9]{4}$" ControlToValidate="txtPIN" ValidationGroup="UploadInfoGroup"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" ToolTip="Click to upload exercise points" />
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
