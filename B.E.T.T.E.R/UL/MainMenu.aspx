<%@ Page Title="Main Menu - B.E.T.T.E.R" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="B.E.T.T.E.R.UL.MainMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Main Menu</h1>
    <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
    <div class="my-points-balance">
        <h2>My Points Balance</h2>
        <h3><asp:Label ID="lblExercisePoints" runat="server" Text="Exercise Points"></asp:Label></h3>
        <asp:Label ID="lblXP" runat="server"></asp:Label>
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
                <div class="character-list">
                    <img class='character' src='<%#Eval("imagePath") %>' /><br />
                    <asp:Label ID="lblTitanName" CssClass="label" runat="server" Text="Titan Name"></asp:Label><br /> 
                        <%#Eval("titanName") %><br /><br />
                    <asp:Label ID="lblElement" CssClass="label" runat="server" Text="Element"></asp:Label><br /> 
                        <asp:Label ID="element" runat="server" Text='<%#getElement(Convert.ToInt32(Eval("elementId")))%>'></asp:Label><br /><br />
                    <asp:Label ID="lblXP" CssClass="label" runat="server" Text="XP"></asp:Label><br />
                        <%#Eval("experience") %><br /><br />
                    <a href ="ManageCharacters.aspx">See More</a>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
    </asp:Content>
