<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UPDATE_STUD.aspx.cs" Inherits="YuvaConnect.UPDATE_STUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
    display: flex;
    justify-content: center;
}
.image_area {
    display: inline-block;
    height: 500px;
    width: 374px;
}

.text_area {
    display: inline-block;
    height: 500px;
    width: 690px;
}
    </style>
        <div>
            <div class="image_area">
                <h3>Take a look at your profile...</h3>
                <div style="display:inline-block;height:197px; width:173px">
                    <br />
&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="157px" Width="135px" />
                </div>
                <div style="display:inline-block;height:198px; width:182px">
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="175px" />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" BorderStyle="Double" Text="Upload new image" />
                </div>
            </div>
            <div class="text_area">
                <br />
                <asp:Label ID="Label1" runat="server" Text="First Name: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Width="141px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Width="145px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Email ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Username:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" Width="161px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" ToolTip="Change Password" />
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="College:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Stream:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Branch:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox6" runat="server" Width="263px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server" Width="125px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox8" runat="server" Width="153px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="Start:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Text="End:"></asp:Label>
&nbsp;&nbsp;
                <br />
                <asp:TextBox ID="TextBox9" runat="server" Width="108px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox10" runat="server" Width="108px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label11" runat="server" Text="Skills:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label12" runat="server" Text="About Me:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox12" runat="server" Height="90px" TextMode="MultiLine" Width="371px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" BackColor="#99CCFF" BorderStyle="Double" OnClick="Button2_Click" Text="Edit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#99CCFF" BorderStyle="Double" OnClick="Button3_Click" Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label13" runat="server"></asp:Label>
            </div>
        </div>

</asp:Content>
