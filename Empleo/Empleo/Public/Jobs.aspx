<%@ Page Title="" Language="C#" MasterPageFile="~/Public/Public.Master" AutoEventWireup="true" CodeBehind="Jobs.aspx.cs" Inherits="Empleo.Public.Jobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Header End -->
        <div class="container-xxl py-5 bg-dark page-header mb-5">
            <div class="container my-5 pt-5 pb-4">
                <h1 class="display-3 text-white mb-3 animated slideInDown">Jobs</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb text-uppercase">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item text-white active" aria-current="page"><a href="#">Jobs</a></li>
                        <li class="breadcrumb-item"><a href="#">About</a></li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Header End -->

     <!-- Search Start 
        <div class="container-fluid bg-primary mb-5 wow fadeIn" data-wow-delay="0.1s" style="padding: 35px;">
            <div class="container">
                <div class="row g-2">
                    <div class="col-md-10">
                        <div class="row g-2">
                            <div class="col-md-4">
                                <input type="text" id="txt" class="form-control border-0" placeholder="Keyword" />
                            </div>
                            <div class="col-md-4">
                                <select class="form-select border-0">
                                    <option selected>Category</option>
                                    <option value="1">Category 1</option>
                                    <option value="2">Category 2</option>
                                    <option value="3">Category 3</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <select class="form-select border-0">
                                    <option selected>Location</option>
                                    <option value="1">Location 1</option>
                                    <option value="2">Location 2</option>
                                    <option value="3">Location 3</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <button class="btn btn-dark border-0 w-100">Search</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Search End -->
    
        <div class="auto-style2" style="background-color: #006600; color: #000000;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Filter By:-<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox style="border-radius:5px; border-color:black;" ID="TxtSearch" runat="server" Height="35px" Width="180px" placeholder="Search by Postname" ></asp:TextBox>
            &nbsp;<asp:Button style="border-radius:5px; border-color:silver;" ID="BtnSearch" runat="server" BackColor="Black" ForeColor="White" Height="35px" Text="Search" Width="110px" OnClick="BtnSearch_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList style="border-radius:5px; border-color:black;" ID="DrpdnLocation" runat="server" Height="35px" Width="180px" OnSelectedIndexChanged="DrpdnLocationFilter" AutoPostBack="true">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>Mumbai</asp:ListItem>
                <asp:ListItem>Delhi</asp:ListItem>
                <asp:ListItem>Noida</asp:ListItem>
                <asp:ListItem>Chennai</asp:ListItem>
                <asp:ListItem>Kochi</asp:ListItem>
                <asp:ListItem>Bangalore</asp:ListItem>
                <asp:ListItem>Hyderabad</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:DropDownList style="border-radius:5px; border-color:black;" ID="DrpdnCategory" runat="server" Height="35px" Width="180px" OnSelectedIndexChanged="DrpdnCategoryFilter" AutoPostBack="true">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>Finance</asp:ListItem>
                <asp:ListItem>Electrical</asp:ListItem>
                <asp:ListItem>Electronics</asp:ListItem>
                <asp:ListItem>IT</asp:ListItem>
                <asp:ListItem>Medical</asp:ListItem>
                <asp:ListItem>Teaching</asp:ListItem>
                <asp:ListItem>Management</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:HiddenField ID="HidJobid" runat="server" Value="-1" />
            <asp:HiddenField ID="HidPostname" runat="server" Value="-1" />
            <asp:HiddenField ID="HidLocation" runat="server" Value="-1" />
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" CellPadding="3" Height="400px" RepeatColumns="2" RepeatDirection="Horizontal" Width="851px" CssClass="auto-style3" OnItemCommand="DataList1_ItemCommand" style="margin-left: 197px" BorderStyle="None" CellSpacing="2" GridLines="Both">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <ItemStyle BorderStyle="Dashed" BorderColor="Black" BackColor="#FFF7E7" ForeColor="#8C4510" />
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp; Post Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="LblPostname" runat="server" Text='<%# Eval("Post_Name") %>'></asp:Label>
                    <br />
                    &nbsp;&nbsp; Job Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="LblLoc" runat="server" Text='<%# Eval("Job_Location") %>'></asp:Label>
                    <br />
                    &nbsp;&nbsp; Company Name :
                    <asp:Label ID="LblCompanynm" runat="server" Text='<%# Eval("Company_Name") %>'></asp:Label>
                    <br />
                    &nbsp;&nbsp; Salary&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="LblSalary" runat="server" Text='<%# Eval("Salary") %>'></asp:Label>
                    <br />
                    <asp:Label ID="LblId" runat="server" Text='<%# Eval("Job_Id") %>' Visible="False"></asp:Label>
                    <br />
                    &nbsp;&nbsp;
                    <asp:Button ID="BtnApply" runat="server" Text="Apply" OnClick="BtnApply_Click" CommandName="Apply" />
                    &nbsp;&nbsp;
                    <asp:Button ID="BtnView" runat="server" Text="View More" OnClick="BtnView_Click" CommandName="View" />
                    &nbsp;<asp:Label ID="LblMsg" runat="server" Visible="False"></asp:Label>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
        </div>
    
</asp:Content>
