<%@ Page Title="" Language="C#" MasterPageFile="~/Seeker/Seeker.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Empleo.Seeker.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 690px;
        }
        .auto-style2 {
            height: 71px;
            margin-top: 25px;
        }
        .auto-style3 {
            margin-left: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
        <div class="auto-style2" style="background-color: #006600; color: #000000;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Filter By:-<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox style="border-radius:5px; border-color:black;" ID="TxtSearch" runat="server" Height="35px" Width="180px" placeholder="Search by Postname" ></asp:TextBox>
            &nbsp;<asp:Button style="border-radius:5px; border-color:silver;" ID="BtnSearch" runat="server" BackColor="Black" ForeColor="White" Height="35px" Text="Search" Width="110px" OnClick="BtnSearch_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList style="border-radius:5px; border-color:black;" ID="DrpdnLocation" runat="server" Height="35px" Width="180px" OnSelectedIndexChanged="DrpdnLocationFilter" AutoPostBack="true">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>Mumbai</asp:ListItem>
                <asp:ListItem>Delhi</asp:ListItem>
                <asp:ListItem>Noida</asp:ListItem>
                <asp:ListItem>Chennai</asp:ListItem>
                <asp:ListItem>Kochi</asp:ListItem>
                <asp:ListItem>Bangalore</asp:ListItem>
                <asp:ListItem>Hyderabad</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:DropDownList style="border-radius:5px; border-color:black;" ID="DrpdnCategory" runat="server" Height="26px" Width="180px" OnSelectedIndexChanged="DrpdnCategoryFilter" AutoPostBack="true">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>Finance</asp:ListItem>
                <asp:ListItem>Electrical</asp:ListItem>
                <asp:ListItem>Electronics</asp:ListItem>
                <asp:ListItem>IT</asp:ListItem>
                <asp:ListItem>Medical</asp:ListItem>
                <asp:ListItem>Teaching</asp:ListItem>
                <asp:ListItem>Management</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:HiddenField ID="HidJobid" runat="server" Value="-1" />
            <asp:HiddenField ID="HidPostname" runat="server" Value="-1" />
            <asp:HiddenField ID="HidLocation" runat="server" Value="-1" />
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" Height="400px" RepeatColumns="2" RepeatDirection="Horizontal" Width="851px" CssClass="auto-style3" ForeColor="Black" OnItemCommand="DataList1_ItemCommand">
                <AlternatingItemStyle BackColor="PaleGoldenrod" />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp; Post Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="LblPostname" runat="server" Text='<%# Eval("Post_Name") %>'></asp:Label>
                    <br />
                    &nbsp;&nbsp; Job Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="LblLoc" runat="server" Text='<%# Eval("Job_Location") %>'></asp:Label>
                    <br />
                    &nbsp;&nbsp; Company Name :
                    <asp:Label ID="LblCompanynm" runat="server" Text='<%# Eval("Company_Name") %>'></asp:Label>
                    <br />
                    &nbsp;&nbsp; Salary&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="LblSalary" runat="server" Text='<%# Eval("Salary") %>'></asp:Label>
                    <br />
                    <asp:Label ID="LblId" runat="server" Text='<%# Eval("Job_Id") %>' Visible="False"></asp:Label>
                    <br />
                    &nbsp;&nbsp;
                    <asp:Button ID="BtnApply" runat="server" Text="Apply" OnClick="BtnApply_Click" CommandName="Apply" />
                    &nbsp;&nbsp;
                    <asp:Button ID="BtnView" runat="server" Text="View More" OnClick="BtnView_Click" CommandName="View" />
                    &nbsp;<asp:Label ID="LblMsg" runat="server" Visible="False"></asp:Label>
                </ItemTemplate>
                <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            </asp:DataList>
        </div>
    </div>
</asp:Content>
