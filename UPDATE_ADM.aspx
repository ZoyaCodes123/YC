<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UPDATE_ADM.aspx.cs" Inherits="YuvaConnect.UPDATE_ADM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
    display: flex;
    justify-content: center;
}

.image_area {
    display:inline-block;
    height:500px;
    width:200px;
}
.text_area{
    display:inline-block;
    height:500px;
    width:500px;
}
    </style>
        <div>
            <div class="image_area">
                <h3>Take a look at your profile...</h3>
                <div style="display:inline-block;height:189px; width:157px" >
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="151px" Width="124px" />
                </div>
                <div style="display:inline-block;height:188px; width:191px">
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="188px" />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" BorderStyle="Double" Text="Upload new image" />
                </div>
            </div>
            <div class="text_area">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Name of Admin:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Width="192px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="College Name:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Width="333px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Email ID:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" Width="186px"></asp:TextBox>
                <br />
                <br />
                Password:<br />
                <asp:TextBox ID="TextBox4" runat="server" Width="145px"></asp:TextBox>
&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" BackColor="#6600CC" ToolTip="Change Password" />
                <br />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Edit" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </div>
        </div> 

</asp:Content>
