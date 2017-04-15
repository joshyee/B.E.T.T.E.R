<%@ Page Title="Fight - B.E.T.T.E.R" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="Fight.aspx.cs" Inherits="B.E.T.T.E.R.UL.Fight" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Fight</h1>
    <section class="left">
        <ul class="character-info">
            <li><strong>Player</strong></li>
            <li>You</li>
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
    </section>
    <section class="middle">
        <h1 id="versus">vs.</h1>
        <asp:Button ID="Button1" runat="server" Text="Begin Fight" /><br />
        <asp:Button ID="Button2" runat="server" Text="Cancel Fight" />
    </section>
    <section class="right">
        <ul class="character-info">
            <li><strong>Player</strong></li>
            <li>Tommy</li>
            <asp:Image class="character" runat="server" ImageUrl="~/Resources/water.png" />
            <li><strong>Typhoon</strong></li>
            <li>Water Titan</li>
            <li>Level 1</li>
            <li>Step 3</li>
            <li>350 XP</li>
            <li>Total Battles: 7</li>
            <li>Wins: 3</li>
            <li>Losses: 4</li>
        </ul>
    </section>
</asp:Content>
