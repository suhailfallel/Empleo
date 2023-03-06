<%@ Page Title="" Language="C#" MasterPageFile="~/Company/Company.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Empleo.Company.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 766px;
        }
        .auto-style2 {
            height: 687px;
            width: 644px;
            margin-left: 252px;
            margin-top: 36px;
        }
        .auto-style3 {
            width: 190px;
        }
        .auto-style4 {
            width: 451px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="auto-style1" style="background-image: url('img/Bghome2.jpg')">
        <div class="auto-style2" style="background-color: #9EF59C; background-image: url('img/Reg_Portrait.jpg'); color: #666666;">
            <h2 style="color: #000000">Change Password</h2>
            <table style="width:100%; font-size: 17px;">
                <tr>
                    <td class="auto-style3" style="color: #FFFFFF">&nbsp;&nbsp; Username&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtUsername" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Password&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtPassword" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Confirm Password&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtCnfrmPassword" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="BtnCmChangepwd" runat="server" OnClick="BtnChange_Click" Height="30px" Text="Change Password" Width="145px" />
                    &nbsp;&nbsp;
                        <asp:Button ID="BtnCancel" runat="server" OnClick="BtnCancel_Click" Height="30px" Text="Cancel" Width="80px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="LblMsg" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
