<%@ Page Title="Welcome - B.E.T.T.E.R" Language="C#" MasterPageFile="~/NonMember.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="B.E.T.T.E.R.UL.Welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="left" id="introduction">
    <h1>Welcome to B.E.T.T.E.R</h1>
        <p>B.E.T.T.E.R (Battling Elemental Titans Through Exercise Routines) 
        is a battle game where players increase the abilities of their characters through physical exercise. 
        The more exercise you complete, the faster you level up your character! 
        There are up to 4 different elemental classes you can choose from including Fire, Water, Earth and Air! <br /><br />
        Register now and challenge your friends in the Elemental Battle Arena to become a God of Elemental Titans!</p> 
    </div>
    <div class="right">
        <asp:Image ID="titans" runat="server" ImageUrl="~/Resources/titans.png" Width="500px" />
    </div>
</asp:Content>
