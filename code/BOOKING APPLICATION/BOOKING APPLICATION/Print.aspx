<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Print.aspx.cs" Inherits="BOOKING_APPLICATION.Print" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
    body {
        background: burlywood;
        background-attachment: fixed;
        background-size: 100%;
    }
    .print-this-page-booking{
        background: rgba(22, 160, 133, 1);
        color: #ffffff;
        border-radius: 4px;
        padding: 6px;
        border: none;
        cursor: pointer;
    }
</style>
    

<script>
function myFunction() {
  window.print();
}
</script>
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
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/pic/booking.jpg" Height="400px" Width="100%" />
                </td>             
            </tr>
          </table>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        
    <button onclick="myFunction()" class="print-this-page-booking">Print this page</button>

        <br />
    </form>
</body>
</html>


