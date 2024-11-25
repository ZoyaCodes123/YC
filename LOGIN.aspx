<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="YuvaConnect.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
    <asp:Panel ID="Panel1" runat="server">
        &nbsp;&nbsp;<br /> 
        <asp:Label ID="Label1" runat="server" Text="LOGIN"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Student" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Alumni" OnClick="Button2_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Admin" OnClick="Button3_Click" />
    </asp:Panel>
</div>
<asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        <br />
        <asp:Label ID="Label2" runat="server" Text="Student Login"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Username: "></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Password: "></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Login" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server"></asp:Label>
    </asp:View>
    <asp:View ID="View2" runat="server">
        <br />
        <asp:Label ID="Label6" runat="server" Text="Alumni Login"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Username: "></asp:Label>
        &nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Password: "></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button5" runat="server"  Text="Login" OnClick="Button5_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server"></asp:Label>
    </asp:View>
    <asp:View ID="View3" runat="server">
        <br />
        <asp:Label ID="Label10" runat="server" Text="Admin Login"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="E-Mail:"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox5" runat="server" TextMode="Email"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label12" runat="server" Text="Password:  "></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button6" runat="server"  Text="Login" OnClick="Button6_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label13" runat="server"></asp:Label>
    </asp:View>
    <asp:View ID="View4" runat="server">
        <asp:Label ID="Label14" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button7" runat="server"  Text="Back" OnClick="Button7_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button8" runat="server" Text="View Profile" OnClick="Button8_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button9" runat="server" Text="Add Event" OnClick="Button9_Click" />
    </asp:View>
</asp:MultiView>
</asp:Content>
