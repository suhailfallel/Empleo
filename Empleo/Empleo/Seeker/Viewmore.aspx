<%@ Page Title="" Language="C#" MasterPageFile="~/Seeker/Seeker.Master" AutoEventWireup="true" CodeBehind="Viewmore.aspx.cs" Inherits="Empleo.Seeker.Viewmore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 749px;
        }
        .auto-style2 {
            margin-left: 150px;
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
        <asp:HiddenField ID="Hidid" runat="server" Value="-1" />
        <asp:HiddenField ID="HidPostname" runat="server" Value="-1" />
        <asp:HiddenField ID="HidLocation" runat="server" Value="-1" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25px" Text="Know More"></asp:Label>
        <br />
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" CssClass="auto-style2" ForeColor="#333333" OnItemCommand="DataList1_ItemCommand">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <ItemTemplate>
                <asp:HiddenField ID="HidId" runat="server" Value="-1" />
<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Post Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                <asp:Label ID="LblPostname" runat="server" Height="25px" Text='<%# Eval("Post_Name") %>' Width="200px"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Category&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                <asp:Label ID="LblCategory" runat="server" Height="25px" Text='<%# Eval("Category") %>' Width="200px"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Company&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                <asp:Label ID="LblCompanyname" runat="server" Height="25px" Text='<%# Eval("Company_Name") %>' Width="200px"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                <asp:Label ID="LblLocation" runat="server" Height="25px" Text='<%# Eval("Job_Location") %>' Width="200px"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Experience&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                <asp:Label ID="LblExperience" runat="server" Height="25px" Text='<%# Eval("Experience") %>' Width="200px"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Skills Required&nbsp; :
                <asp:Label ID="LblSkills" runat="server" Height="25px" Text='<%# Eval("Skills") %>' Width="200px"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qualification&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                <asp:Label ID="LblQualification" runat="server" Height="25px" Text='<%# Eval("Qualification") %>' Width="200px"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Salary&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                <asp:Label ID="LblSalary" runat="server" Height="25px" Text='<%# Eval("Salary") %>' Width="200px"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnApply" runat="server" Height="30px" Text="Apply" Width="120px" OnClick="BtnApply_Click" CommandName="Apply" />
                &nbsp;
                <asp:Button ID="BtnCancel" runat="server" Height="30px" Text="Cancel" Width="70px" OnClick="BtnCancel_Click"  CommandName="Cancel"/>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
    </div>
</asp:Content>
