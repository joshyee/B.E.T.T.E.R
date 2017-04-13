<%@ Page Title="" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="ManageCharacters.aspx.cs" Inherits="B.E.T.T.E.R.UL.ManageCharacters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>My Characters</h1>
         <ul class="character-info">
            <asp:Image class="character" runat="server" ImageUrl="~/Resources/fire.png" />
            <li><strong>Ignis</strong></li>
            <li>Fire Titan</li>
            <li>Level 1</li>
            <li>Step 2</li>
            <li>250 XP</li>
            <li>Total Battles: 6</li>
            <li>Wins: 3</li>
            <li>Losses: 3</li>
        </ul>

        <ul class="character-info">
            <asp:Image class="character" runat="server" ImageUrl="~/Resources/water.png" />
            <li><strong>Water Titan</strong></li>
            <li>Level 2</li>
            <li>Step 2</li>
            <li>1500 XP</li>
            <li>Total Battles: 16</li>
            <li>Wins: 6</li>
            <li>Losses: 10</li>
        </ul>
</asp:Content>
