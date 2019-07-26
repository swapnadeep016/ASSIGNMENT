﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BOOKING_APPLICATION.index" %>

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
            <table>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/pic/banner.jpg" Height="400px" Width="100%" />
                </td>             
            </tr>
            </table>
            
        <div>
           <center>
            <table class="auto-style2">
                <tr>
                    <td>
                       <table>
                          <center><asp:Label ID="Label1" runat="server" Text="MATCH 1"></asp:Label></center>
                       </table> 
                        <table>
                           <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/pic/rugby-stedium-1.jpg" Height="100px" Width="200px" DescriptionUrl="~/match1.aspx" PostBackUrl="~/match1.aspx"></asp:ImageButton>
                       </table>                 
                    </td>
                    <td>
                       <table>
                           <center><asp:Label ID="Label2" runat="server" Text="MATCH 2"></asp:Label></center>
                       </table> 
                        <table>
                           <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/pic/rugby-stedium-2.jpg" Height="100px" Width="200px" DescriptionUrl="~/match2.aspx" PostBackUrl="~/match2.aspx"></asp:ImageButton>
                       </table>
                    </td>
                    <td>
                       <table>
                           <center><asp:Label ID="Label3" runat="server" Text="MATCH 3"></asp:Label></center>
                       </table> 
                        <table>
                           <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/pic/rugby-stedium-3.jpg" Height="100px" Width="200px" DescriptionUrl="~/match3.aspx" PostBackUrl="~/match3.aspx"></asp:ImageButton>
                       </table>
                    </td>  
                </tr>
            </table>
           </center>
        </div>
        <div>
            <center><asp:Label ID="Label4" runat="server" Text="Copyright 2019"></asp:Label></center>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=&quot;C:\Users\swapn\Google Drive\ASSIGNMENT\ASSIGNMENT\code\BOOKING APPLICATION\BOOKING APPLICATION\DB.mdb&quot;" ProviderName="System.Data.OleDb" SelectCommand="SELECT NewsID, News_Heading, Writing, Photo FROM News"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:TemplateField>
                    <ControlStyle BorderColor="#CC6600" ForeColor="#FF6600" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </form>
</body>
</html>
