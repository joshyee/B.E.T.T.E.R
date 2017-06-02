<%@ Page Title="" Language="C#" MasterPageFile="~/Member.Master" AutoEventWireup="true" CodeBehind="ManageProfile.aspx.cs" Inherits="B.E.T.T.E.R.UL.ManageProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSourceRegistration" runat="server" ConnectionString="<%$ ConnectionStrings:udbBetterConnectionString %>" SelectCommand="SELECT * FROM [tblUser]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="userId" DataSourceID="SqlDataSourceRegistration">
        <Columns>
            <asp:BoundField DataField="userId" HeaderText="userId" InsertVisible="False" ReadOnly="True" SortExpression="userId" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="passcode" HeaderText="passcode" SortExpression="passcode" />
            <asp:BoundField DataField="parentEmail" HeaderText="parentEmail" SortExpression="parentEmail" />
            <asp:BoundField DataField="pIN" HeaderText="pIN" SortExpression="pIN" />
            <asp:BoundField DataField="exercisePoints" HeaderText="exercisePoints" SortExpression="exercisePoints" />
            <asp:CheckBoxField DataField="retired" HeaderText="retired" SortExpression="retired" />
            <asp:CheckBoxField DataField="active" HeaderText="active" SortExpression="active" />
            <asp:CheckBoxField DataField="suspended" HeaderText="suspended" SortExpression="suspended" />
            <asp:BoundField DataField="creationDate" HeaderText="creationDate" SortExpression="creationDate" />
        </Columns>
    </asp:GridView>
    
</asp:Content>
