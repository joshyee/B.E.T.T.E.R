<%@ Page Title="Manage Points - B.E.T.T.E.R" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="ManagePoints.aspx.cs" Inherits="B.E.T.T.E.R.UL.ManagePoints" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Manage XP</h1>
    <h3>Current Balance</h3>
    <asp:Label ID="lblExercisePoints" runat="server" Text="Exercise Points"></asp:Label>
    <div class="col-group">
        <asp:GridView ID="ManagePointsGridView" cssclass="TableGrid" GridLines="None" runat="server" AutoGenerateColumns="False" DataKeyNames="titanId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="true" EditText="Add Points" UpdateText="Add" ItemStyle-CssClass="SQLCommandButtons" />
                <asp:BoundField DataField="titanName" HeaderText="titanName" SortExpression="titanName" ReadOnly="true"/>
                <asp:BoundField DataField="experience" HeaderText="experience" SortExpression="experience" />
                <asp:ImageField DataImageUrlField="imagePath" ReadOnly="true">
                    <ControlStyle CssClass="GridViewImage" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:udbBetterConnectionString %>" DeleteCommand="DELETE FROM [tblTitan] WHERE [titanId] = @titanId" InsertCommand="INSERT INTO [tblTitan] ([titanName], [userId], [elementId], [experience], [active], [suspended], [creationDate], [imagePath]) VALUES (@titanName, @userId, @elementId, @experience, @active, @suspended, @creationDate, @imagePath)" SelectCommand="SELECT * FROM [tblTitan]" UpdateCommand="UPDATE [tblTitan] SET [experience] = experience + @experience WHERE [titanId] = @titanId">
            <DeleteParameters>
                <asp:Parameter Name="titanId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="titanName" Type="String" />
                <asp:Parameter Name="userId" Type="Int32" />
                <asp:Parameter Name="elementId" Type="Int32" />
                <asp:Parameter Name="experience" Type="Int32" />
                <asp:Parameter Name="active" Type="Boolean" />
                <asp:Parameter Name="suspended" Type="Boolean" />
                <asp:Parameter Name="creationDate" Type="DateTime" />
                <asp:Parameter Name="imagePath" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="titanName" Type="String" />
                <asp:Parameter Name="userId" Type="Int32" />
                <asp:Parameter Name="elementId" Type="Int32" />
                <asp:Parameter Name="experience" Type="Int32" />
                <asp:Parameter Name="active" Type="Boolean" />
                <asp:Parameter Name="suspended" Type="Boolean" />
                <asp:Parameter Name="creationDate" Type="DateTime" />
                <asp:Parameter Name="imagePath" Type="String" />
                <asp:Parameter Name="titanId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
