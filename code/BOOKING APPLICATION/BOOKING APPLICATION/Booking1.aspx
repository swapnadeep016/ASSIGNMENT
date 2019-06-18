<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking1.aspx.cs" Inherits="BOOKING_APPLICATION.Booking1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style3 {
            width: 218px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
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
                        <asp:TextBox ID="TextBox1" runat="server" Width="592px" ToolTip="Enter your name"></asp:TextBox></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="592px" TextMode="Email" ToolTip="Enter your email"></asp:TextBox></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Phone No.:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="592px" MaxLength="10" TextMode="Number" ToolTip="Enter your phone number"></asp:TextBox></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="No. of person:"></asp:Label></td>
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
                        <asp:Label ID="Label6" runat="server" Text="Matches:"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="167px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Matchname" DataValueField="Matchname">
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
                        <asp:TextBox ID="TextBox5" runat="server" Width="594px" TextMode="MultiLine" ToolTip="Type your address"></asp:TextBox></td>
                </tr>
            </table>
            <div>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource3">
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
        </div>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=&quot;C:\Users\swapn\Google Drive\ASSIGNMENT\ASSIGNMENT\code\BOOKING APPLICATION\BOOKING APPLICATION\DB.mdb&quot;" InsertCommand="INSERT INTO [User] (PhoneNo, Name, Address, No_of_person, Date_of_booking, Stadium, MatchNo, Matchname, Date_of_match) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="System.Data.OleDb">
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox3" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox1" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox5" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="?" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="Label7" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="Label8" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="Label9" Name="?" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList2" Name="?" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="Label10" Name="?" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=&quot;C:\Users\swapn\Google Drive\ASSIGNMENT\ASSIGNMENT\code\BOOKING APPLICATION\BOOKING APPLICATION\DB.mdb&quot;" ProviderName="System.Data.OleDb" SelectCommand="SELECT Matchname FROM [Match]"></asp:SqlDataSource>
        
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=&quot;C:\Users\swapn\Google Drive\ASSIGNMENT\ASSIGNMENT\code\BOOKING APPLICATION\BOOKING APPLICATION\DB.mdb&quot;" ProviderName="System.Data.OleDb" SelectCommand="SELECT MatchNo, Availability, Date_of_match, Stadium FROM [Match] WHERE (Matchname = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="?" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </form>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
