<%@ Page Title="Manage Points - B.E.T.T.E.R" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="ManagePoints.aspx.cs" Inherits="B.E.T.T.E.R.UL.ManagePoints" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Manage XP</h1>
    <h3>Current Balance</h3>
    <p>600 XP</p>
    <div class="col-group">
        <div>
            <ul class="character-info">
                <asp:Image class="character" runat="server" ImageUrl="~/Resources/fire.png" />
                <li><strong>Ignis</strong></li>
                <li>Fire Titan</li>
                <li>Level 1</li>
                <li>Step 2</li>
                <li>250 XP</li>
                <asp:TextBox class="txtXP" ID="TextBox1" runat="server" placeholder="XP" ToolTip="Enter exercise points"></asp:TextBox>
                <li>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Incorrect value, please enter a number" ValidationExpression="^[0-9]*$" ControlToValidate="TextBox1"></asp:RegularExpressionValidator>
                </li>
            </ul>
        </div>
        <div>
            <ul class="character-info">
                <asp:Image class="character" runat="server" ImageUrl="~/Resources/water.png" />
                <li><strong>Mizu</strong></li>
                <li>Water Titan</li>
                <li>Level 2</li>
                <li>Step 2</li>
                <li>1500 XP</li>
                <asp:TextBox class="txtXP" ID="TextBox2" runat="server" placeholder="XP" ToolTip="Enter exercise points"></asp:TextBox>
                <li>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Incorrect value, please enter a number" ValidationExpression="^[0-9]*$" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
                </li>
            </ul>
        </div>
        <asp:Button class="smallBtn" ID="Button1" runat="server" Text="Add XP" ToolTip="Click to add exercise points" />
    </div>
</asp:Content>
