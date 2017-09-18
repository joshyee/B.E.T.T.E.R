<%@ Page Title="Hall of Fame - B.E.T.T.E.R" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="HallOfFame.aspx.cs" Inherits="B.E.T.T.E.R.UL.HallOfFame" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hall of Fame</h1>
    <div class="col-group">    
        <asp:ObjectDataSource ID="odsCharacters" runat="server" TypeName="B.E.T.T.E.R.CharacterDataAccess" SelectMethod="getHOFCharacters"></asp:ObjectDataSource>
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
                    <asp:Label ID="lblWins" CssClass="label" runat="server" Text="Wins"></asp:Label><br />
                        <%#Eval("wins") %><br /><br />
                    <asp:Label ID="lblLosses" CssClass="label" runat="server" Text="Losses"></asp:Label><br />
                        <%#Eval("losses") %><br /><br />
                    <asp:Label ID="lblDateCreated" CssClass="label" runat="server" Text="Date Created"></asp:Label><br />
                        <%#Eval("dateCreated") %><br /><br />
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>
