<%@ Page Title="" Language="C#" MasterPageFile="~/Company/Company.Master" AutoEventWireup="true" CodeBehind="EditDetails.aspx.cs" Inherits="Empleo.Company.EditDetails" %>
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
        .auto-style8 {
        width: 100%;
        height: 558px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1" style="background-image: url('img/Bghome2.jpg')">
        <div class="auto-style2" style="background-color: #9EF59C; background-image: url('img/Reg_Portrait.jpg');">
            <table style="font-size: 17px;" class="auto-style8">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4"><h2>Edit Company Profile</h2>&nbsp;</td>
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
                        <asp:TextBox ID="TxtCmName" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Company Type</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtCmType" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Date of Establish&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtCmDoEstablish" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Address&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtAddress" runat="server" Height="40px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; City&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtCmCity" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Country&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtCmCountry" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Contact No&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtCmContactNo" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Contact Person Name&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtCmContactperson" runat="server" Height="30px" Width="201px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Email&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtCmEmail" runat="server" Height="30px" Width="201px"></asp:TextBox>
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
                        <asp:Button ID="BtnCmEdit" runat="server" OnClick="BtnSave_Click" Height="30px" Text="Save Changes" Width="120px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnCancel" runat="server" OnClick="BtnCancel_Click" Height="30px" Text="Cancel" Width="119px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6">
                        <asp:Label ID="LblMsg" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
