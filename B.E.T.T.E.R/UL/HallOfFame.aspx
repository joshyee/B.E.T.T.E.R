<%@ Page Title="Hall of Fame - B.E.T.T.E.R" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="HallOfFame.aspx.cs" Inherits="B.E.T.T.E.R.UL.HallOfFame" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="left">
        <h1>Hall of Fame</h1>
        <ul class="character-info">
            <asp:Image class="character" ID="fire" runat="server" ImageUrl="~/Resources/fire.png" />
            <li><strong>Character</strong></li>
            <li>Infernus</li>
            <li><strong>Player</strong></li>
            <li>JohnnyJay</li>
            <li>Total Battles: 30</li>
            <li>Wins: 17</li>
            <li>Losses: 13</li>
            <li><strong>Date Created</strong></li>
            <li>14/03/2017</li>
        </ul>
    </section>
    <section id="right">
         <ul class="character-info">
            <asp:Image class="character" ID="earth" runat="server" ImageUrl="~/Resources/earth.png" />
            <li><strong>Character</strong></li>
            <li>Quake</li>
            <li><strong>Player</strong></li>
            <li>Nenda31</li>
            <li>Total Battles: 33</li>
            <li>Wins: 19</li>
            <li>Losses: 14</li>
            <li><strong>Date Created</strong></li>
            <li>02/03/2017</li>
        </ul>

        <ul class="character-info">
            <asp:Image class="character" ID="water" runat="server" ImageUrl="~/Resources/water.png" />
            <li><strong>Character</strong></li>
            <li>Hydro</li>
            <li><strong>Player</strong></li>
            <li>JuliusE</li>
            <li>Total Battles: 29</li>
            <li>Wins: 23</li>
            <li>Losses: 6</li>
            <li><strong>Date Created</strong></li>
            <li>11/03/2017</li>
        </ul>
    </section>
</asp:Content>
