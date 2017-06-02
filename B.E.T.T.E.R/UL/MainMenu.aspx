<%@ Page Title="Main Menu - B.E.T.T.E.R" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="B.E.T.T.E.R.UL.MainMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>Main Menu</h1>
        <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        <div class="my-points-balance">
            <h2>My Points Balance</h2>
            <h3><asp:Label ID="lblExercisePoints" runat="server" Text="Exercise Points"></asp:Label></h3>
            <asp:Button ID="btnManagePoints" runat="server" Text="Manage Points" OnClick="btnManagePoints_Click" />
            <br />
            <h2>Recent Fights</h2>
            <ul class="fight-info">
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
            <ul class="fight-info">
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
        </div>
        <div class="col-group">
            <div>
                <ul class="character-info">
                    <asp:Image class="character" ID="fire" runat="server" ImageUrl="~/Resources/fire.png" />
                    <li><strong>Ignis</strong></li>
                    <li>Fire Titan</li>
                    <li>Level 1</li>
                    <asp:Button class="mediumBtn" ID="btnViewMore1" runat="server" Text="View More" OnClick="btnViewMore_Click" />
                </ul>
            </div>
            <div>
                <ul class="character-info">
                    <asp:Image class="character" ID="water" runat="server" ImageUrl="~/Resources/water.png" />
                    <li><strong>Aqueous</strong></li>
                    <li>Water Titan</li>
                    <li>Level 2</li>
                    <asp:Button class="mediumBtn" ID="btnViewMore2" runat="server" Text="View More" OnClick="btnViewMore_Click" />
                </ul>
            </div>
    </div> 
</asp:Content>
