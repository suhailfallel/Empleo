<%@ Page Title="" Language="C#" MasterPageFile="~/Seeker/Seeker.Master" AutoEventWireup="true" CodeBehind="ConfirmApplication.aspx.cs" Inherits="Empleo.Seeker.ConfirmApplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 900px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1" style="background-image: url('img/Bghome2.jpg')">
        <asp:HiddenField ID="Hidid" runat="server" Value="-1" />
        <asp:HiddenField ID="Hidpostname" runat="server" Value="-1" />
        <asp:HiddenField ID="Hidlocation" runat="server" Value="-1" />
        <asp:HiddenField ID="Hidseekerid" runat="server" Value="-1" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25px" Text="Confirm Application"></asp:Label>
        <br />
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style2" style="margin-left: 199px" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <asp:HiddenField ID="HidId" runat="server" Value="-1" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Applicant Name&nbsp;&nbsp;&nbsp;&nbsp; :
                <asp:Label ID="LblAppliName" runat="server" Height="25px" Text='<%# Eval("Applicant_Name") %>' Width="200px"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Applicant Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                <asp:Label ID="LblAppliEmail" runat="server" Height="25px" Text='<%# Eval("Applicant_Email") %>' Width="200px"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Post Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                <asp:Label ID="LblPostName" runat="server" Height="25px" Text='<%# Eval("Post_Name") %>' Width="200px"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Applicant Contact&nbsp;&nbsp; :
                <asp:Label ID="LblContact" runat="server" Height="25px" Text='<%# Eval("Applicant_Contact") %>' Width="200px"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Job Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; :
                <asp:Label ID="LblJobLocation" runat="server" Height="25px" Text='<%# Eval("Job_Location") %>' Width="200px"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Resume&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; :<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageMap ID="ImageMap1" runat="server" Height="250px" ImageUrl='<%# Eval("Resume") %>' Width="206px">
                </asp:ImageMap>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnApply" runat="server" Height="30px" Text="Click to Apply" Width="145px" CommandName="Apply" />
                &nbsp;
                <asp:Button ID="BtnCancel" runat="server" Height="30px" Text="Cancel" CommandName="Cancel" />
            </ItemTemplate>
        </asp:DataList>
        <asp:Label ID="LblMsg" runat="server" Text="" Visible="false"></asp:Label>
    </div>
</asp:Content>
