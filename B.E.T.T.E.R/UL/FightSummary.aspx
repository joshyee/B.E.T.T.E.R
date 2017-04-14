﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="FightSummary.aspx.cs" Inherits="B.E.T.T.E.R.UL.FightSummary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Fight Summary</h1>
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
    <section class="right">
        <h2>Recent Fights</h2>
        <ul class="character-info">
            <li><strong>Player</strong></li>
            <li>Tommy</li>
            <li><strong>Character</strong></li>
            <li>Typhoon</li>
            <li>Water Titan</li>
            <li>Level 1</li>
            <li>Step 3</li>
            <li>350 XP</li>
            <li><strong>Result</strong></li>
            <li>Won</li>
        </ul>
        <ul class="character-info">
            <li><strong>Player</strong></li>
            <li>Jessi91</li>
            <li><strong>Character</strong></li>
            <li>Wings</li>
            <li>Air Titan</li>
            <li>Level 1</li>
            <li>Step 2</li>
            <li>270 XP</li>
            <li><strong>Result</strong></li>
            <li>Won</li>
        </ul>
    </section>
</asp:Content>