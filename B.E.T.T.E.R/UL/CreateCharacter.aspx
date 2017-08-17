<%@ Page Title="Create Character - B.E.T.T.E.R" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="CreateCharacter.aspx.cs" Inherits="B.E.T.T.E.R.UL.CreateCharacter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Create New Character</h1>
    <div class="col-group">
        <div>
            <ul class="character-info">
                <asp:Image class="character" ID="fire" runat="server" ImageUrl="~/Images/fire.png" />
                <li><strong>Fire Titan</strong></li>
                <li><strong>Level 1</strong></li>
                <li><strong>Abilities:</strong></li>
                <li>Inferno - Burns the opponent with a devastating blaze attack that leaves only ashes of the remains</li>
                <li><strong>Strength and Weakness</strong></li>
                <li>Stronger than Air, but weaker than Water</li>
                <li><asp:Label ID="lblErrorFire" CssClass="titanError" runat="server" Text="Fire Titan already exists, please choose another Elemental Titan" Visible="False"></asp:Label></li>
            </ul>
            <asp:Button ID="fireTitan" class="createCharacter" runat="server" Text="Create Character" OnClick="fireTitan_Click" ToolTip="Click to create character" /> 
        </div>
        <div>
            <ul class="character-info">
                <asp:Image class="character" ID="air" runat="server" ImageUrl="~/Images/air.png" />
                <li><strong>Air Titan</strong></li>
                <li><strong>Level 1</strong></li>
                <li><strong>Abilities:</strong></li>
                <li>Aerial Assault - Strike the enemy with a barrage of missiles from the skies</li>
                <li><strong>Strength and Weakness</strong></li>
                <li>Stronger than Earth, but weaker than Fire</li>
                <li><asp:Label ID="lblErrorAir" CssClass="titanError" runat="server" Text="Air Titan already exists, please choose another Elemental Titan" Visible="False"></asp:Label></li>
            </ul>
            <asp:Button ID="airTitan" class="createCharacter" runat="server" Text="Create Character" ToolTip="Click to create character" OnClick="airTitan_Click" /> 
        </div>
        <div>
             <ul class="character-info">
                <asp:Image class="character" ID="earth" runat="server" ImageUrl="~/Images/earth.png" />
                <li><strong>Earth Titan</strong></li>
                <li><strong>Level 1</strong></li>
                <li><strong>Abilities:</strong></li>
                <li>Tremor - Shake up the enemy with a mega earthquake</li>
                <li><strong>Strength and Weakness</strong></li>
                <li>Stronger than Water, but weaker than Air</li>
                <li><asp:Label ID="lblErrorEarth" CssClass="titanError" runat="server" Text="Earth Titan already exists, please choose another Elemental Titan" Visible="False"></asp:Label></li>
            </ul>
            <asp:Button ID="earthTitan" class="createCharacter" runat="server" Text="Create Character" ToolTip="Click to create character" OnClick="earthTitan_Click" /> 
        </div>
        <div>
            <ul class="character-info">
                <asp:Image class="character" ID="water" runat="server" ImageUrl="~/Images/water.png" />
                <li><strong>Water Titan</strong></li>
                <li><strong>Level 1</strong></li>
                <li><strong>Abilities:</strong></li>
                <li>Tsunami - Unleash a terrifying giant wave that envelops the opponent</li>
                <li><strong>Strength and Weakness</strong></li>
                <li>Stronger than Fire, but weaker than Earth</li>
                <li><asp:Label ID="lblErrorWater" CssClass="titanError" runat="server" Text="Water Titan already exists, please choose another Elemental Titan" Visible="False"></asp:Label></li>
            </ul>
            <asp:Button ID="waterTitan" class="createCharacter" runat="server" Text="Create Character" ToolTip="Click to create character" OnClick="waterTitan_Click" /> 
        </div>
    </div>
</asp:Content>
