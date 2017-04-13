<%@ Page Title="" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="B.E.T.T.E.R.UL.MainMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="my-characters">
        <h1>My Characters</h1>
        <ul class="character-info">
            <asp:Image class="character" ID="fire" runat="server" ImageUrl="~/Resources/fire.png" />
            <li><strong>Ignis</strong></li>
            <li>Fire Titan</li>
            <li>Level 1</li>
            <li>Win/Loss: 50%</li>
            <li><strong><a href="SelectCharacter.aspx">View more</a></strong></li>
        </ul>

        <ul class="character-info">
            <asp:Image class="character" ID="water" runat="server" ImageUrl="~/Resources/water.png" />
            <li><strong>Aqueous</strong></li>
            <li>Water</li>
            <li>Level 2</li>
            <li>Win/Loss: 30%</li>
            <li><strong><a href="SelectCharacter.aspx">View more</a></strong></li>
        </ul>
    </div>
    <div class="my-points-balance">
        <h1>My Points Balance</h1>
        <h2>350</h2>
        <li><strong><a href="ManagePoints.aspx">Manage Points</a></strong></li>
    </div>
</asp:Content>
