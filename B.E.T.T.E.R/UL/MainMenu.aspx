<%@ Page Title="Main Menu - B.E.T.T.E.R" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="B.E.T.T.E.R.UL.MainMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>Main Menu</h1>
        <asp:Label ID="lblFirstName" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="lblUsername" runat="server" Text="Label"></asp:Label>
        <div class="my-points-balance">
            <h1>My Points Balance</h1>
            <h2>600</h2>
            <h4><a href="ManagePoints.aspx">Manage Points</a></h4>
        </div>
        <div class="col-group">
            <div>
                <ul class="character-info">
                    <asp:Image class="character" ID="fire" runat="server" ImageUrl="~/Resources/fire.png" />
                    <li><strong>Ignis</strong></li>
                    <li>Fire Titan</li>
                    <li>Level 1</li>
                    <li><strong><a href="ManageCharacters.aspx">View more</a></strong></li>
                </ul>
            </div>
            <div>
                <ul class="character-info">
                    <asp:Image class="character" ID="water" runat="server" ImageUrl="~/Resources/water.png" />
                    <li><strong>Aqueous</strong></li>
                    <li>Water</li>
                    <li>Level 2</li>
                    <li><strong><a href="ManageCharacters.aspx">View more</a></strong></li>
                </ul>
            </div>
    </div> 
</asp:Content>
