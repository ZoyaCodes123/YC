<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SIGN_UP.aspx.cs" Inherits="YuvaConnect.SIGN_UP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
 <label>USERNAME :</label>
 <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br />
 <label>EMAIL_ID &nbsp;&nbsp; :  </label>
 <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
 <label>PASSWORD :</label>
 <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
 <asp:Button ID="btnSignup" runat="server" Text="Signup" OnClick="btnSignup_Click" />
 </div>
    </form>
</body>
</html>
