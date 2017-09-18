<%@ Page Title="Manage Characters - B.E.T.T.E.R" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="ManageCharacters.aspx.cs" Inherits="B.E.T.T.E.R.UL.ManageCharacters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Manage Characters</h1>
    <div class="col-group">    
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
                    <asp:Label ID="lblLevel" CssClass="label" runat="server" Text="Level"></asp:Label><br />
                        <asp:Label ID="level" runat="server" Text='<%#getLevel(Convert.ToInt32(Eval("experience")))%>'></asp:Label><br /><br />
                    <asp:Label ID="lblStep" CssClass="label" runat="server" Text="Step"></asp:Label><br />
                        <asp:Label ID="step" runat="server" Text='<%#getStep(Convert.ToInt32(Eval("experience")))%>'></asp:Label><br /><br />
                    <asp:Label ID="lblXP" CssClass="label" runat="server" Text="XP"></asp:Label><br />
                        <%#Eval("experience") %><br /><br />
                    <asp:Label ID="lblWins" CssClass="label" runat="server" Text="Wins"></asp:Label><br />
                        <%#Eval("wins") %><br /><br />
                    <asp:Label ID="lblLosses" CssClass="label" runat="server" Text="Losses"></asp:Label><br />
                        <%#Eval("losses") %><br /><br />
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>
