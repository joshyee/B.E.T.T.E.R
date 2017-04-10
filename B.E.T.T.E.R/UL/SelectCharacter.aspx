<%@ Page Title="" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="SelectCharacter.aspx.cs" Inherits="B.E.T.T.E.R.UL.SelectCharacter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="left">
        <h1>Create New Character</h1>
        <ul class="character-info">
            <li><strong>Fire Titan</strong></li>
            <li><strong>Level 1</strong></li>
            <li><strong>Abilities:</strong></li>
            <li>Inferno - Burns the opponent with a devastating blaze attack that leaves only ashes of the remains</li>
            <li><strong>Strength and Weakness</strong></li>
            <li>Stronger than Air, but weaker than Water</li><br />
            <asp:Button class="smallBtn" ID="createCharacter" runat="server" Text="Create Character" /> 
        </ul>

        <ul class="character-info">
            <li><strong>Air Titan</strong></li>
            <li><strong>Level 1</strong></li>
            <li><strong>Abilities:</strong></li>
            <li>Aerial Assault - Strike the enemy with a barrage of missiles from the skies</li>
            <li><strong>Strength and Weakness</strong></li>
            <li>Stronger than Earth, but weaker than Fire</li><br />
            <asp:Button class="smallBtn" ID="Button1" runat="server" Text="Create Character" /> 
        </ul>

        <ul class="character-info">
            <li><strong>Earth Titan</strong></li>
            <li><strong>Level 1</strong></li>
            <li><strong>Abilities:</strong></li>
            <li>Tremor - Shake up the enemy with a mega earthquake</li>
            <li><strong>Strength and Weakness</strong></li>
            <li>Stronger than Water, but weaker than Air</li><br />
            <asp:Button class="smallBtn" ID="Button2" runat="server" Text="Create Character" /> 
        </ul>

        <ul class="character-info">
            <li><strong>Fire Titan</strong></li>
            <li><strong>Level 1</strong></li>
            <li><strong>Abilities:</strong></li>
            <li>Inferno - Burns the opponent with a devastating blaze attack that leaves only ashes of the remains</li>
            <li><strong>Strength and Weakness</strong></li>
            <li>Stronger than Earth, but weaker than Water</li><br />
            <asp:Button class="smallBtn" ID="Button3" runat="server" Text="Create Character" /> 
        </ul>
    </section>
    <section id="right">
        <h1>My Characters</h1>
    </section>
</asp:Content>
