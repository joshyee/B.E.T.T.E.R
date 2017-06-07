<%@ Page Title="Hall of Fame - B.E.T.T.E.R" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="HallOfFame.aspx.cs" Inherits="B.E.T.T.E.R.UL.HallOfFame" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hall of Fame</h1>
    <div class="col-group">
        <asp:GridView ID="HallOfFameGridView" cssclass="TableGrid" GridLines="None" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Titan Name" HeaderText="Titan Name" SortExpression="Titan Name" />
                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                <asp:BoundField DataField="Date Created" HeaderText="Date Created" ReadOnly="True" SortExpression="Date Created" DataFormatString="{0:d}" />
                <asp:ImageField DataImageUrlField="imagePath">
                    <ControlStyle CssClass="GridViewImage" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:udbBetterConnectionString %>" SelectCommand="SELECT tblTitan.titanName AS 'Titan Name', MAX(tblUser.username) AS 'Username', MAX(tblTitan.creationDate) AS 'Date Created', tblTitan.imagePath
FROM tblTitan
INNER JOIN tblUser
ON tblTitan.userId = tblUser.userId
WHERE tblTitan.experience = 11500
GROUP BY tblTitan.titanName, imagePath
ORDER BY MAX(tblTitan.creationDate);"></asp:SqlDataSource>
    </div>
</asp:Content>
