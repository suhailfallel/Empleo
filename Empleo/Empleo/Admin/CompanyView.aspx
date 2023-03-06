<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CompanyView.aspx.cs" Inherits="Empleo.Admin.CompanyView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 500px;
    }
        .auto-style2 {
            margin-top: 45px;
            margin-left: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="226px" Width="1182px" CssClass="auto-style2" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Company_Id,Company_Name,Company_Type,DateofEstablish,Company_Address,Company_City,Company_Country,Company_ContactNo,Company_Person,Company_Email,Username,Password,Status">
        <Columns>
            <asp:BoundField DataField="Company_Id" HeaderText="Company Id" />
            <asp:BoundField DataField="Company_Name" HeaderText="Company Name" />
            <asp:BoundField DataField="Company_Type" HeaderText="Company Type" />
            <asp:BoundField DataField="DateofEstablish" HeaderText="Date of Establish" />
            <asp:BoundField DataField="Company_Address" HeaderText="Company Address" />
            <asp:BoundField DataField="Company_City" HeaderText="Company City" />
            <asp:BoundField DataField="Company_Country" HeaderText="Company Country" />
            <asp:BoundField DataField="Company_ContactNo" HeaderText="Company Contact" />
            <asp:BoundField DataField="Company_Person" HeaderText="Company ContactPerson" />
            <asp:BoundField DataField="Company_Email" HeaderText="Company Email" />
            <asp:BoundField DataField="Username" HeaderText="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" />
            <asp:BoundField DataField="Status" HeaderText="Status" />
            <asp:TemplateField HeaderText="Accept">
                <ItemTemplate>
                    <asp:Button ID="BtnAccept" runat="server" Text="Accept" OnClick="BtnAccept_Click" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Decline">
                <ItemTemplate>
                    <asp:Button ID="BtnDecline" runat="server" Text="Decline" OnClick="BtnDecline_Click" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
        <asp:HiddenField ID="HiddenField1" runat="server" Value="-1" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LblMsg" runat="server" Visible="False"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;
</div>
</asp:Content>
