<%@ Page Title="Challenge - B.E.T.T.E.R" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="Challenge.aspx.cs" Inherits="B.E.T.T.E.R.UL.Challenge" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Challenge</h1>
    <div class="col-group">
        <div>
            <ul class="character-info">
                <asp:Image class="character" runat="server" ImageUrl="~/Resources/fire.png" />
                <li><strong>Pyro</strong></li>
                <li>Fire Titan</li>
                <li>Level 2</li>
                <li>Step 1</li>
                <li>1250 XP</li>
                <li>Total Battles: 14</li>
                <li>Wins: 9</li>
                <li>Losses: 5</li>
            </ul>
            <asp:Button class="smallBtn" ID="Button1" runat="server" Text="Challenge" /> 
        </div>
        <div>
            <ul class="character-info">
                <asp:Image class="character" runat="server" ImageUrl="~/Resources/water.png" />
                <li><strong>Drizzle</strong></li>
                <li>Water Titan</li>
                <li>Level 3</li>
                <li>Step 1</li>
                <li>2500 XP</li>
                <li>Total Battles: 21</li>
                <li>Wins: 13</li>
                <li>Losses: 8</li>
            </ul>
            <asp:Button class="smallBtn" ID="Button2" runat="server" Text="Challenge" /> 
        </div>
        <div>
            <ul class="character-info">
                <asp:Image class="character" runat="server" ImageUrl="~/Resources/earth.png" />
                <li><strong>Terra</strong></li>
                <li>Earth Titan</li>
                <li>Level 1</li>
                <li>Step 3</li>
                <li>450 XP</li>
                <li>Total Battles: 9</li>
                <li>Wins: 6</li>
                <li>Losses: 3</li>
            </ul>
            <asp:Button class="smallBtn" ID="Button3" runat="server" Text="Challenge" /> 
        </div>
        <div>
            <ul class="character-info">
                <asp:Image class="character" runat="server" ImageUrl="~/Resources/air.png" />
                <li><strong>Gust</strong></li>
                <li>Air Titan</li>
                <li>Level 2</li>
                <li>Step 1</li>
                <li>1300 XP</li>
                <li>Total Battles: 15</li>
                <li>Wins: 10</li>
                <li>Losses: 5</li>
            </ul>
            <asp:Button class="smallBtn" ID="Button4" runat="server" Text="Challenge" /> 
        </div>
    </div>
</asp:Content>
