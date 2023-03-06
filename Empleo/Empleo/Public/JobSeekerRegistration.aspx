<%@ Page Title="" Language="C#" MasterPageFile="~/Public/Public.Master" AutoEventWireup="true" CodeBehind="JobSeekerRegistration.aspx.cs" Inherits="Empleo.Public.JobSeekerRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 788px;
        }
        .auto-style2 {
            height: 689px;
            width: 640px;
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
        <div class="auto-style2" style="background-color: #C6F2BF; background-image: url('img/Reg_Portrait.jpg'); font-size: 17px; color: #000000;">
            <table style="font-size: 17px;" class="auto-style5">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4"><h2>Job Seeker Registration</h2>&nbsp;</td>
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
                        <asp:TextBox ID="TxtFirstname" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Last Name&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtLastname" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Date of Birth&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtDOB" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Highest Education&nbsp;</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList1" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="121px">
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
                        <asp:TextBox ID="TxtEmail" style="border-radius:5px; border-color:black;" runat="server" Height="31px" Width="200px"></asp:TextBox>
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
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp; District</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtDistrict" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; State&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtState" style="border-radius:5px; border-color:black;" runat="server" Height="29px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Contact No&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtContact" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Resume&nbsp;</td>
                    <td class="auto-style4">
                        <asp:FileUpload ID="FUResume" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="317px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Username&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TxtUsername" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Password&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TxtPassword" style="border-radius:5px; border-color:black;" runat="server" Height="31px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Confirm Password&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TxtCnPassword" style="border-radius:5px; border-color:black;" runat="server" Height="30px" Width="200px"></asp:TextBox>
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
                        <asp:Button ID="BtnRegister" style="border-radius:5px; border-color:black;" runat="server" OnClick="BtnRegister_Click" Height="31px" Text="Register" Width="100px" />
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
