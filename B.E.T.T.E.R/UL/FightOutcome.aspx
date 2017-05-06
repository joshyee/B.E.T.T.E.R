<%@ Page Title="Fight Outcome - B.E.T.T.E.R" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="FightOutcome.aspx.cs" Inherits="B.E.T.T.E.R.UL.FightOutcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Fight Outcome</h1>
    <div class="col-group" id="fight">
        <div>
            <ul class="character-info" style="height:650px;" >
                <li><strong>Player</strong></li>
                <li>You</li>
                <asp:Image class="character" runat="server" ImageUrl="~/Resources/fire.png" />
                <li><strong>Ignis</strong></li>
                <li>Fire Titan</li>
                <li>Level 1</li>
                <li>Step 2</li>
                <li>250 XP</li>
                <li>Total Battles: 7</li>
                <li>Wins: 3</li>
                <li>Losses: 3</li>
                <li><strong>Won</strong></li>
            </ul>
        </div>
        <div>
            <h1 id="versus">VS.</h1>
        </div>
        <div>
            <ul class="character-info" style="height:650px;">
                <li><strong>Player</strong></li>
                <li>Tommy</li>
                <asp:Image class="character" runat="server" ImageUrl="~/Resources/water.png" />
                <li><strong>Typhoon</strong></li>
                <li>Water Titan</li>
                <li>Level 1</li>
                <li>Step 3</li>
                <li>350 XP</li>
                <li>Total Battles: 8</li>
                <li>Wins: 3</li>
                <li>Losses: 4</li>
                <li><strong>Lost</strong></li>
            </ul>
        </div>
     </div>
</asp:Content>
