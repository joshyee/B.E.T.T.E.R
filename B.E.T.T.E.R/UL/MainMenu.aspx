<%@ Page Title="Main Menu - B.E.T.T.E.R" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="B.E.T.T.E.R.UL.MainMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Main Menu</h1>
    <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
    <div class="my-points-balance">
        <h2>My Points Balance</h2>
        <h3><asp:Label ID="lblExercisePoints" runat="server" Text="Exercise Points"></asp:Label></h3>
        <asp:Button ID="btnManagePoints" runat="server" Text="Manage Points" OnClick="btnManagePoints_Click" />
        <br />
    </div> 
    <div id="MyCharacters">
        <asp:ObjectDataSource ID="odsCharacters" runat="server" TypeName="B.E.T.T.E.R.CharacterDataAccess" SelectMethod="getCharacters"></asp:ObjectDataSource>

        <asp:ListView ID="lvCharacters" runat="server" DataSourceID="odsCharacters">
            <LayoutTemplate>
                <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
            </LayoutTemplate>
            <ItemTemplate>
            
                Titan Name: <%#Eval("titanName") %><br />
                User ID: <%#Eval("userId") %><br />
                Element ID: <%#Eval("elementId") %><br />
                Experience: <%#Eval("experience") %><br />
                Active: <%#Eval("active") %><br />
                Image Path: <%#Eval("imagePath") %><br />
                Date Created: <%#Eval("dateCreated") %><br />

            </ItemTemplate>
        </asp:ListView>
    </div>
    </asp:Content>
