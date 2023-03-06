<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Jobs.aspx.cs" Inherits="Empleo.Admin.Jobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 500px;
    }
    .auto-style2 {
        margin-top: 41px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style2" ForeColor="Black" GridLines="Vertical" Height="250px" DataKeyNames="Job_Id,Company_id,Company_Name,Post_Name,Category,Job_Location,Experience,Salary,Qualification,Skills,Posted_Date,Status" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" Width="1100px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Job_Id" HeaderText="Job Id" />
            <asp:BoundField DataField="Company_Id" HeaderText="Company Id" />
            <asp:BoundField DataField="Company_Name" HeaderText="Company Name" />
            <asp:BoundField DataField="Post_Name" HeaderText="Post Name" />
            <asp:BoundField DataField="Category" HeaderText="Categories" />
            <asp:BoundField DataField="Job_Location" HeaderText="Job Location" />
            <asp:BoundField DataField="Experience" HeaderText="Experience" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" />
            <asp:BoundField DataField="Qualification" HeaderText="Qualification" />
            <asp:BoundField DataField="Skills" HeaderText="Skills" />
            <asp:BoundField DataField="Posted_Date" HeaderText="Posted Date" />
            <asp:BoundField DataField="Status" HeaderText="Status" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
</div>
</asp:Content>
