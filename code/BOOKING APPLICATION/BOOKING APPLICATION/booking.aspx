<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="BOOKING_APPLICATION.booking" %>

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
        .auto-style3 {
            width: 218px;
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
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="592px"></asp:TextBox></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="592px" TextMode="Email"></asp:TextBox></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Phone No.:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="592px" MaxLength="10" TextMode="Number"></asp:TextBox></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="No. of booking:"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="167px">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Width="592px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
            </table>
            <div>
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="104px" />
        </div>
        
    </form>
</body>
</html>
