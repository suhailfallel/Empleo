<%@ Page Title="" Language="C#" MasterPageFile="~/Company/Company.Master" AutoEventWireup="true" CodeBehind="ViewApplication.aspx.cs" Inherits="Empleo.Company.ViewApplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 890px;
        }
        .auto-style2 {
            margin-left: 181px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1" style="background-image: url('img/Bghome2.jpg')">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25px" Text="Applications"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Filter by :-<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="131px" OnSelectedIndexChanged="PostFilter" AutoPostBack="true" >
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem>Accountant</asp:ListItem>
            <asp:ListItem>Electrician</asp:ListItem>
            <asp:ListItem>Cashier</asp:ListItem>
            <asp:ListItem>Software Engineer</asp:ListItem>
            <asp:ListItem>Data Engineer</asp:ListItem>
            <asp:ListItem>Receptionist</asp:ListItem>
            <asp:ListItem>Manager</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" CssClass="auto-style2" GridLines="None" HeaderText="Applications" Height="421px" Width="398px" OnPageIndexChanging="DetasilsView1_PageIndexChanging">
            <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="Application_Id" HeaderText="Application Id" />
                <asp:BoundField DataField="Applicant_Id" HeaderText="Applicant Id" />
                <asp:BoundField HeaderText="Applicant Name" DataField="Applicant_Name" />
                <asp:BoundField HeaderText="Post Name" DataField="Post_Name" />
                <asp:BoundField HeaderText="Applicant Contact" DataField="Applicant_Contact" />
                <asp:BoundField HeaderText="Applicant Email" DataField="Applicant_Email" />
                <asp:TemplateField HeaderText="Resume">
                    <ItemTemplate>
                        <asp:ImageMap ID="ImageMap1" runat="server" Height="301px" ImageUrl='<%# Eval("Resume") %>' Width="234px">
                        </asp:ImageMap>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Status" DataField="Status" />
                <asp:BoundField DataField="Message" HeaderText="Message" />
            </Fields>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <FooterTemplate>
                <asp:Button ID="BtnAccept" runat="server" Height="30px" Text="Accept" Width="100px" OnClick="BtnAccept_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="BtnResume" runat="server" Height="30px" Text="Viewed Resume" Width="131px" OnClick="BtnViewResume_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="BtnReject" runat="server" Height="30px" Text="Reject" Width="75px" OnClick="BtnReject_Click" />
            </FooterTemplate>
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" Font-Size="X-Large" ForeColor="#E7E7FF" HorizontalAlign="Center" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        </asp:DetailsView>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
</asp:Content>
