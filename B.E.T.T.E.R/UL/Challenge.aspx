<%@ Page Title="Challenge - B.E.T.T.E.R" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="Challenge.aspx.cs" Inherits="B.E.T.T.E.R.UL.Challenge" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Challenge</h1>
    <div class="col-group">
        <asp:GridView ID="ChallengeGridView" cssclass="TableGrid" GridLines="None" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ChallengeGridView_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Titan Name" HeaderText="Titan Name" SortExpression="Titan Name" />
                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                <asp:BoundField DataField="Total Battles" HeaderText="Total Battles" ReadOnly="True" SortExpression="Total Battles" />
                <asp:ImageField DataImageUrlField="imagePath">
                    <ControlStyle CssClass="GridViewImage" />
                </asp:ImageField>
                <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="btnChallenge" OnClick="GoToFight" Text="Challenge" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:udbBetterConnectionString %>" SelectCommand="SELECT tblTitan.titanName AS 'Titan Name', MAX(tblUser.username) AS 'Username', COUNT(tblBattle.battleId) AS 'Total Battles', tblTitan.imagePath
FROM tblTitan
INNER JOIN tblUser
ON tblTitan.userId = tblUser.userId
INNER JOIN tblBattle
ON tblTitan.titanId = tblBattle.battler1 OR tblTitan.titanId = tblBattle.battler2
WHERE tblUser.userId != @userId AND tblTitan.active = @active
GROUP BY tblTitan.titanName, tblTitan.imagePath;">
        <SelectParameters>
            <asp:SessionParameter Name="userId" SessionField="userId" Type="Int32" />
            <asp:Parameter DefaultValue="true" Name="active" Type="Boolean" />
        </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
