<%@ Page Title="Manage Points - B.E.T.T.E.R" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="ManagePoints.aspx.cs" Inherits="B.E.T.T.E.R.UL.ManagePoints" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Manage XP</h1>
    <h3>Current Balance</h3>
    <li>600 XP</li>
    <ul class="character-info">
            <asp:Image class="character" runat="server" ImageUrl="~/Resources/fire.png" />
            <li><strong>Ignis</strong></li>
            <li>Fire Titan</li>
            <li>Level 1</li>
            <li>Step 2</li>
            <li>250 XP</li>
            <asp:Label ID="Label1" runat="server" Text="XP:"></asp:Label>
            <asp:TextBox class="smallTxtbox" ID="TextBox1" runat="server"></asp:TextBox>
        </ul>

        <ul class="character-info">
            <asp:Image class="character" runat="server" ImageUrl="~/Resources/water.png" />
            <li><strong>Mizu</strong></li>
            <li>Water Titan</li>
            <li>Level 2</li>
            <li>Step 2</li>
            <li>1500 XP</li>
            <asp:Label ID="Label2" runat="server" Text="XP:"></asp:Label>
            <asp:TextBox class="smallTxtbox" ID="TextBox2" runat="server"></asp:TextBox>
        </ul>
        <asp:Button class="smallBtn" ID="Button1" runat="server" Text="Add XP" />
</asp:Content>
