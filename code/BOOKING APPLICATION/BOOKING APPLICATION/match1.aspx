﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="match1.aspx.cs" Inherits="BOOKING_APPLICATION.match1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<style>
    body {
        background-color:burlywood;
        background-attachment: fixed;
        background-size:100%;
    }
    </style>

<body>
    <form id="form1" runat="server">
         <table style="width:100%;">
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="98px" ImageUrl="~/pic/logo.png" Width="180px" />
          
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server">HOME</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton2" runat="server">MATCH</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton3" runat="server">BOOKING</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton4" runat="server">CONTACT US</asp:LinkButton>
                </td>
             </tr>
         </table>
         <table>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/pic/rugby-stedium-1.jpg" Height="400px" Width="100%" />
                </td>             
            </tr>
         </table>
        <asp:Button ID="Button1" runat="server" Text="Book Now" Width="104px" OnClick="Button1_Click" />
         <br />
         <br />
    </form>
</body>
</html>
