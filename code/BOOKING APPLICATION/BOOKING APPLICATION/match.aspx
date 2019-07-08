<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="match.aspx.cs" Inherits="BOOKING_APPLICATION.match" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
        body {
            background: burlywood;
            background-attachment: fixed;
            background-size:100%;
        }
        .auto-style2 {
            height: 117px;
            width: 647px;
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
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/index.aspx">HOME</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/match.aspx">MATCH</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/booking.aspx">BOOKING</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/contact-us.aspx">CONTACT US</asp:LinkButton>
                </td>
            </tr>
          </table>
        <div>
           <center>
            <table class="auto-style2">
                <tr>
                    <td>
                       <table>
                          <center><asp:Label ID="Label1" runat="server" Text="IRELAND VS. GERMANY"></asp:Label></center>
                       </table> 
                        <table>
                           <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/pic/rugby-stedium-1.jpg" Height="100px" Width="200px" PostBackUrl="~/match.aspx"></asp:ImageButton>
                       </table>                 
                    </td>
                    <td>
                       <table>
                           <center><asp:Label ID="Label2" runat="server" Text="AUSTRALIA VS. ENGLAND"></asp:Label></center>
                       </table> 
                        <table>
                           <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/pic/rugby-stedium-2.jpg" Height="100px" Width="200px" PostBackUrl="~/match.aspx"></asp:ImageButton>
                       </table>
                    </td>
                    <td>
                       <table>
                           <center><asp:Label ID="Label3" runat="server" Text="NETHERLAND VS. SCOTLAND"></asp:Label></center>
                       </table> 
                        <table>
                           <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/pic/rugby-stedium-3.jpg" Height="100px" Width="200px" PostBackUrl="~/match.aspx"></asp:ImageButton>
                       </table>
                    </td>  
                </tr>
            </table>
           </center>
           <center>
            <table class="auto-style2">
                <tr>
                    <td>
                       <table>
                          <center><asp:Label ID="Label4" runat="server" Text="SPAIN VS. NEWZEALAND"></asp:Label></center>
                       </table> 
                        <table>
                           <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/pic/rugby-stedium-4.jpg" Height="100px" Width="200px" PostBackUrl="~/match.aspx"></asp:ImageButton>
                       </table>                 
                    </td>
                    <td>
                       <table>
                           <center><asp:Label ID="Label5" runat="server" Text="ITALY VS. FRANCE"></asp:Label></center>
                       </table> 
                        <table>
                           <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/pic/rugby-stedium-5.jpg" Height="100px" Width="200px" PostBackUrl="~/match.aspx"></asp:ImageButton>
                       </table>
                    </td>
                    <td>
                       <table>
                           <center><asp:Label ID="Label6" runat="server" Text="CROATIA VS. BELIZE"></asp:Label></center>
                       </table> 
                        <table>
                           <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/pic/rugby-stedium-6.jpg" Height="100px" Width="200px" PostBackUrl="~/match.aspx"></asp:ImageButton>
                       </table>
                    </td>  
                </tr>
            </table>
           </center>
           <center>
            <table class="auto-style2">
                <tr>
                    <td>
                       <table>
                          <center><asp:Label ID="Label7" runat="server" Text="DENMARK VS. CHILE"></asp:Label></center>
                       </table> 
                        <table>
                           <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/pic/rugby-stedium-7.jpg" Height="100px" Width="200px" PostBackUrl="~/match.aspx"></asp:ImageButton>
                       </table>                 
                    </td>
                    <td>
                       <table>
                           <center><asp:Label ID="Label8" runat="server" Text="BELGIUM VS. COLUMBIA"></asp:Label></center>
                       </table> 
                        <table>
                           <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/pic/rugby-stedium-8.jpg" Height="100px" Width="200px" PostBackUrl="~/match.aspx"></asp:ImageButton>
                       </table>
                    </td>
                    <td>
                       <table>
                           <center><asp:Label ID="Label9" runat="server" Text="AUSTRIA VS. BOLIVIA"></asp:Label></center>
                       </table> 
                        <table>
                           <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/pic/rugby-stedium-9.jpg" Height="100px" Width="200px" PostBackUrl="~/match.aspx"></asp:ImageButton>
                       </table>
                    </td>  
                </tr>
            </table>
           </center>
        </div>
        <div>
            <center><asp:Label ID="Label10" runat="server" Text="Copyright 2019"></asp:Label></center>
        </div>
    </form>
</body>
</html>
