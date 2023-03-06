<%@ Page Title="" Language="C#" MasterPageFile="~/Seeker/Seeker.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Empleo.Seeker.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            height: 788px;
        }
        .auto-style2 {
            height: 689px;
            width: 657px;
            margin-left: 251px;
            margin-top: 37px;
        }
        .auto-style3 {
            width: 171px;
        }
        .auto-style5 {
        width: 100%;
        height: 291px;
             margin-top: 11px;
         }
    .auto-style6 {
        height: 29px;
    }
        .auto-style11 {
            height: 29px;
            width: 171px;
        }
    .auto-style12 {
        margin-left: 162px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
        <div class="auto-style2" style="background-color: #C6F2BF">
            <h2 class="auto-style12">Change Password</h2>
            <table style="font-size: 17px;" class="auto-style5">
               
               
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Username&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TxtUsername" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Password&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TxtPassword" runat="server" Height="31px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Confirm Password&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TxtCnPassword" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="Small" Text="Accept all the provided details are true" />
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" ForeColor="Red">**</asp:CustomValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style6">
                        <asp:Button ID="BtnChange" runat="server"  Height="31px" Text="Change Password" Width="151px" />
                    &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnCancel" runat="server" Height="31px" Text="Cancel" Width="85px" />
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Label ID="LblMsg" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
