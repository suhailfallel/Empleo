<%@ Page Title="" Language="C#" MasterPageFile="~/Seeker/Seeker.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="Empleo.Seeker.EditProfile" %>
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
        .auto-style4 {
            width: 430px;
        }
    .auto-style5 {
        width: 100%;
        height: 560px;
    }
    .auto-style6 {
        height: 29px;
    }
    .auto-style8 {
        width: 171px;
        height: 10px;
    }
    .auto-style9 {
        width: 430px;
        height: 10px;
    }
    .auto-style10 {
        height: 10px;
    }
        .auto-style11 {
            height: 29px;
            width: 171px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
        <div class="auto-style2" style="background-color: #C6F2BF">
            <table style="font-size: 17px;" class="auto-style5">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4"><h2>Edit Profile</h2>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;&nbsp;&nbsp; Fisrt Name</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TxtFirstname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Last Name&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtLastname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Date of Birth&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtDOB" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Highest Education&nbsp;</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="121px">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Secondary</asp:ListItem>
                            <asp:ListItem>Higher Secondary</asp:ListItem>
                            <asp:ListItem>Graduate</asp:ListItem>
                            <asp:ListItem>Post Graduate</asp:ListItem>
                            <asp:ListItem>Phd</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Email&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtEmail" runat="server" Height="31px" Width="200px"></asp:TextBox>
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
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp; District</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtDistrict" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; State&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtState" runat="server" Height="29px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Contact No&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtContact" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Resume&nbsp;</td>
                    <td class="auto-style4">
                        <asp:FileUpload ID="FUResume" runat="server" Height="30px" Width="317px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                
               
                
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style6">
                        <asp:Button ID="BtnSave" runat="server" Height="31px" OnClick="BtnSave_Click" Text="Save Changes" Width="126px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnCancel" runat="server" Height="31px" OnClick="BtnCancel_Click" Text="Cancel" Width="100px" />
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
