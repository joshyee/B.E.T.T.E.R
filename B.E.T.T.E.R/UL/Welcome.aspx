﻿<%@ Page Title="Welcome to B.E.T.T.E.R" Language="C#" MasterPageFile="~/NonMember.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="B.E.T.T.E.R.UL.Welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav>
        <ul>
            <li><a href="Login.aspx">Login</a></li>
            <li><a href="Register.aspx">Register</a></li>
        </ul>
    </nav>
    <h1>Welcome to B.E.T.T.E.R</h1>
    <section class="left" id="introduction">
        B.E.T.T.E.R (Battling Elemental Titans Through Exercise Routines) is a battle game where players increase the abilities of their characters through physical exercise. The more exercise you complete, the faster you level up your character! There are up to 4 different elemental classes you can choose from including Earth, Air, Water and Fire! <br /><br /><a href="Register.aspx">Register</a> now and challenge your friends in the Elemental Battle Arena to become a God of Elemental Titans! 
    </section>
</asp:Content>