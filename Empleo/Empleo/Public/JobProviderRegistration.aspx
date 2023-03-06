<%@ Page Title="" Language="C#" MasterPageFile="~/Public/Public.Master" AutoEventWireup="true" CodeBehind="JobProviderRegistration.aspx.cs" Inherits="Empleo.Public.JobProviderRegistration" %>
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
        .auto-style5 {
            width: 190px;
            height: 27px;
        }
        .auto-style6 {
            width: 451px;
            height: 27px;
        }
        .auto-style7 {
            height: 27px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
        <div class="auto-style2" style="background-color: #9EF59C; background-image: url('img/Reg_Portrait.jpg'); color: #000000; font-size: 17px;">
            <table style="width:100%; font-size: 17px;">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4"><h2>Job Provider Registration</h2>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Company Name&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtCmName" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Company Type</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtCmType" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Date of Establish&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtCmDoEstablish" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Address&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtAddress" style="border-radius:5px; border-color:black;" runat="server" Height="40px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; City&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtCmCity" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Country&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtCmCountry" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Contact No&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtCmContactNo" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Contact Person Name&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtCmContactperson" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Email&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtCmEmail" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Username&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtUsername" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Password&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtPassword" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Confirm Password&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtCnfrmPassword" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="Small" Text="Accept that all entered details are valid" />
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="**" ForeColor="Red"></asp:CustomValidator>
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
                        <asp:Button ID="BtnCmRegister" style="border-radius:5px; border-color:black;" runat="server" OnClick="BtnRegister_Click" Height="30px" Text="Register" Width="120px" />
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
