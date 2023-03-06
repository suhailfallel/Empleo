<%@ Page Title="" Language="C#" MasterPageFile="~/Public/Public.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Empleo.Public.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 399px;
    }
    .auto-style2 {
        height: 315px;
        width: 440px;
        margin-left: 393px;
        margin-top: 29px;
    }
        .auto-style3 {
            width: 100%;
            height: 219px;
        }
        .auto-style4 {
            width: 169px;
        }
        .auto-style5 {
            width: 244px;
        }
    .auto-style6 {
        width: 169px;
        height: 71px;
    }
    .auto-style7 {
        width: 244px;
        height: 71px;
    }
    .auto-style8 {
        height: 71px;
    }
    .auto-style9 {
        width: 169px;
        height: 24px;
    }
    .auto-style10 {
        width: 244px;
        height: 24px;
    }
    .auto-style11 {
        height: 24px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
    <div class="auto-style2" style="font-family: Arial, Helvetica, sans-serif; font-size: 22px; font-weight: normal; color: #66FFFF; background-color: #CCFF99; background-image: url('img/Login.jpg');">
        <table class="auto-style3">
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7"><h2 style="color: #FFFFFF">Login</h2>&nbsp;</td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style4" style="font-size: 21px; color: #000000; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp; Username</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtUsername" style="border-radius:5px; border-color:black" runat="server" Height="30px" ToolTip="Enter Username" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtUsername" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="font-size: 21px; color: #000000; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp; Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtPassword" style="border-radius:5px; border-color:black;" runat="server" Height="30px" ToolTip="Enter Password" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPassword" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="BtnSignIn" style="border-radius:5px; border-color:black;" runat="server" OnClick="BtnLogin_Click" Height="27px" Text="Sign In" Width="91px" Font-Size="17px" />
                &nbsp;&nbsp;
                    <asp:Label ID="LblMsg" runat="server" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5" style="font-size: 12px; color: #FFFFFF;">forgot
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="11px" Font-Underline="True" ForeColor="White">Password?</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</div>
</asp:Content>
