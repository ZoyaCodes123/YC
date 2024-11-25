<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ALUMNI.aspx.cs" Inherits="YuvaConnect.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <link href="StyleSheet2.css" rel="stylesheet" />
            <div style="text-align: center; margin-top: 20px;">
            <!-- Dropdown for Branch -->
            <asp:DropDownList ID="ddlBranch" runat="server">
                <asp:ListItem Text="--Select Branch--" Value=""></asp:ListItem>
                <asp:ListItem Text="Biology" Value="BIOLOGY"></asp:ListItem>
                <asp:ListItem Text="Computer Science" Value="COMPUTER SCIENCE"></asp:ListItem>
                <asp:ListItem Text="Fine Arts" Value="FINE ARTS"></asp:ListItem>
                <asp:ListItem Text="Finance" Value="FINANCE"></asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlSkill" runat="server">
                <asp:ListItem Text="--Select Skills--" Value=""></asp:ListItem>
                <asp:ListItem Text="Programming" Value="PROGRAMMING"></asp:ListItem>
                <asp:ListItem Text="Design" Value="DESIGN"></asp:ListItem>
                <asp:ListItem Text="Finance" Value="FINANCE"></asp:ListItem>
            </asp:DropDownList>
            <!-- TextBox for Name Search -->
            <asp:TextBox ID="txtSearch" runat="server" Width="200px" Placeholder="Search by Name" CssClass="textBoxStyle"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        </div>

     <div class="container">
    <h1>ALUMNI</h1>
    <p>Meet our Alumni</p>
    <div class="alumni-members">
        <asp:Repeater ID="Repeater1" runat="server">
             <ItemTemplate>
                <div class="member">
                    <!-- Use ASP.NET Image control for ImageUrl -->
                    <asp:Image ID="IMAGE_URL" runat="server" ImageUrl='<%# Eval("IMAGE_URL") %>' AlternateText='<%# Eval("name") %>' Width="100px" Height="100px" /><br />
                    
                    <!-- Display ID using Label control -->
                    <asp:Label ID="ALUMNI_ID" runat="server" Text='<%# "ID: " + Eval("ALUMNI_ID") %>'></asp:Label><br />
                    <!-- Display Name using Label control -->
                    <asp:Label ID="NAME" runat="server" Text='<%# Eval("NAME") %>'></asp:Label><br />
                    
                    <!-- Display Profession using Label control -->
                    <asp:Label ID="BRANCH" runat="server" Text='<%# Eval("BRANCH") %>'></asp:Label><br />
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <br />
        <br />
        <br />
        <br />

    </div>
</div>
</asp:Content>
