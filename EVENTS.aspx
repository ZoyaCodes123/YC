<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EVENTS.aspx.cs" Inherits="YuvaConnect.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        * {
    margin: 0;
    padding: 0;
}

html {
    height: 100%;
}

body {
    background-color: #8B0000;
    display: flex;
    justify-content: center;
    align-items: center;
}

.container {
    margin: 0;
    width: 100%;
    text-align: center;
    background: #ffffff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    overflow-y: auto;
    height: 490px;
}

h1 {
    text-align: center;
}

.alumni-members {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-evenly;
    gap: 20px;
    margin-top: 45px;
}

.member {
    padding:10px;
    width: 100px;
    height: 400px;
    flex: 1 1 20%;
    text-align: center;
    border: 1px solid #ddd;
    background-color: white;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
}

    .member img {
        width: 100px;
        height: 100px;
        border-radius: 50%;
        border: 2.5px solid #ddd;
        margin-bottom: 15px;
    }

    </style> 
          

                <div class="container">
    <h1>Events</h1>
    <p>See Event list</p>
    <div class="alumni-members">
        <asp:Repeater ID="Repeater1" runat="server">
             <ItemTemplate>
                <div class="member">
                    <!-- Use ASP.NET Image control for ImageUrl -->
                    <asp:Image ID="IMAGEURL" runat="server" ImageUrl='<%# Eval("IMAGEURL") %>' AlternateText='<%# Eval("EVENT_NAME") %>' Width="100px" Height="100px" /><br />
                    
                    <!-- Display ID using Label control -->
                    <asp:Label ID="EVENT_ID" runat="server" Text='<%# "ID: " + Eval("EVENT_ID") %>'></asp:Label><br />
                    
                    <!-- Display Name using Label control -->
                    <asp:Label ID="EVENT_NAME" runat="server" Text='<%# Eval("EVENT_NAME") %>'></asp:Label><br />
                    
                    <!-- Display Profession using Label control -->
                    <asp:Label ID="STARTDATE" runat="server" Text='<%# Eval("STARTDATE") %>'></asp:Label><br />
                     
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
