<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="SeekerView.aspx.cs" Inherits="Empleo.Admin.SeekerView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 500px;
            margin-top: 45px;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="250px" DataKeyNames="Seeker_Id,Seeker_FirstName,Seeker_Lastname,Seeker_DateofBirth,Highest_Education,Seeker_Email,Seeker_Address,Seeker_District,Seeker_State,Seeker_ContactNo,Username,Password">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Seeker_Id" HeaderText="Seeker Id" />
            <asp:BoundField DataField="Seeker_FirstName" HeaderText="Seeker Firstname" />
            <asp:BoundField DataField="Seeker_LastName" HeaderText="Seeker Lastname" />
            <asp:BoundField DataField="Seeker_DateofBirth" HeaderText="Seeker DOB" />
            <asp:BoundField DataField="Highest_Education" HeaderText="Highest Education" />
            <asp:BoundField DataField="Seeker_Email" HeaderText="Seeker Email" />
            <asp:BoundField DataField="Seeker_Address" HeaderText="Seeker Address" />
            <asp:BoundField DataField="Seeker_District" HeaderText="Seeker District" />
            <asp:BoundField DataField="Seeker_State" HeaderText="Seeker State" />
            <asp:BoundField DataField="Seeker_ContactNo" HeaderText="Seeker Contact" />
            <asp:BoundField DataField="Username" HeaderText="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
</div>
</asp:Content>
