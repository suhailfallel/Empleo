<%@ Page Title="" Language="C#" MasterPageFile="~/Company/Company.Master" AutoEventWireup="true" CodeBehind="AddJob.aspx.cs" Inherits="Empleo.Company.AddJob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 450px;
            margin-left: 0px;
        }
        .auto-style2 {
            height: 400px;
            width: 550px;
            margin-left: 200px;
        }
        .auto-style3 {
            width: 100%;
            height: 255px;
        }
        .auto-style4 {
            width: 316px;
        }
        .auto-style5 {
            width: 209px;
        }
        .auto-style6 {
            width: 209px;
            height: 32px;
        }
        .auto-style7 {
            width: 316px;
            height: 32px;
        }
        .auto-style8 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="auto-style1" style="background-image: url('img/Bghome2.jpg')">
        <div class="auto-style2">
            <h2>Add Jobs</h2>
            <table class="auto-style3" style="color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 18px">
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;Post Name </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtPostname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;Category </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtCategory" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp; Location &nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtLocation" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <br />
&nbsp;&nbsp; Experience</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TxtExperience" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp; Qualification&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtQualification" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp; Salary&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtSalary" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp; Skills Required&nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtSkills" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="LblMsg" runat="server" Font-Size="15px" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="BtnPost" runat="server" OnClick="BtnPost_Click" Text="Post Job" Width="120px" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnCancel" runat="server" OnClick="BtnCancel_Click" Text="Cancel" />
                    </td>
                    <td>&nbsp;</td>
                </tr>

            </table>
        </div>
    </div>

</asp:Content>
