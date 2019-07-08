<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact-us.aspx.cs" Inherits="BOOKING_APPLICATION.contact_us" %>

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
        width: 232px;
    }
    .auto-style4 {
        width: 233px;
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
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="592px"></asp:TextBox></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="592px" TextMode="Email"></asp:TextBox></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Text="Phone No.:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="592px" MaxLength="10" TextMode="Number"></asp:TextBox></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Text="Subject:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="592px" MaxLength="10"></asp:TextBox></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="Description"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Width="595px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
            </table>
            <div>
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="104px" OnClick="Button1_Click" />
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=&quot;C:\Users\swapn\Google Drive\ASSIGNMENT\ASSIGNMENT\code\BOOKING APPLICATION\BOOKING APPLICATION\DB.mdb&quot;" InsertCommand="INSERT INTO [Contact-Us] (Name, Email, PhoneNo, Subject, Description) VALUES (?, ?, ?, ?, ?)" ProviderName="System.Data.OleDb" SelectCommand="SELECT Name, Email, PhoneNo, Subject, Description FROM [Contact-Us]">
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox3" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox4" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox5" Name="?" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
    </form>
</body>
</html>
