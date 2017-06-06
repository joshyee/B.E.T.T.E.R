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
    <asp:GridView ID="MainMenuGridView" cssclass="TableGrid" GridLines="None" runat="server" AutoGenerateColumns="False" DataKeyNames="titanId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="titanName" HeaderText="Titan Name" SortExpression="titanName" />
            <asp:BoundField DataField="experience" HeaderText="XP" SortExpression="experience" ReadOnly="true" />
            <asp:BoundField DataField="creationDate" HeaderText="Date Created" SortExpression="creationDate" DataFormatString="{0:d}" ReadOnly="true" />
            <asp:ImageField DataImageUrlField="imagePath" ReadOnly="true">
                <ControlStyle CssClass="GridViewImage" />
            </asp:ImageField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:udbBetterConnectionString %>" SelectCommand="SELECT * FROM [tblTitan] WHERE ([userId] = @userId AND [active] = @active) ">
    <SelectParameters>
        <asp:SessionParameter Name="userId" SessionField="userId" Type="Int32" />
        <asp:Parameter DefaultValue="true" Name="active" Type="Boolean" />
    </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
