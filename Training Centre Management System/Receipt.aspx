<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Receipt.aspx.cs" Inherits="Training_Centre_Management_System.Receipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 50px;
        }
        .auto-style2 {
            height: 132px;
        }
        .auto-style3 {
            height: 70px;
        }
        .auto-style4 {
            margin-top: 23px;
        }
        .auto-style5 {
            height: 43px;
        }
        .auto-style6 {
            height: 71px;
        }
        .auto-style7 {
            height: 61px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div>
            <img src="image/logo-email-1-300x93.jpg" align="right" style="margin-right:670px;"/><br /><br />
            <asp:Label ID="Label5" runat="server" Text="RECEIPT" Font-Bold="True" Font-Size="XX-Large" Font-Names="Arial Black" Font-Strikeout="False" Height="63px" Width="300px"></asp:Label>
            <asp:Panel ID="Panel1" runat="server" BorderColor="White"><br /><br />
                <table border="1">
                    <tr>
                        <td class="auto-style2" style="border-color:white;">
                            Company Address:<br />
                            Batu 19 3/4 Ulu Perdik,<br /> 41300 Hulu Langat,<br />Selangor, Malaysia.
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color:white;" class="auto-style3">Package No:
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
                            Date:
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <table>
                                <tr>
                                    <td style="border-color:white;">
                                        Customer Address:<br />
                                        <asp:Label ID="Label3" runat="server" Text="Label"> Lot 951, Kampung Batang Merbau,<br /> 17500,Tanah Merah,<br /> Kelantan.</asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1000px" style="border-color:white;" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style4">
                                <Columns>
                                    <asp:BoundField DataField="pno" HeaderText="Package No">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="packageid" HeaderText="Package ID">
                                    <ControlStyle Font-Bold="True" />
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="packagename" HeaderText="Package Name">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="publisher_date" HeaderText="Date" SortExpression="Date">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Times" HeaderText="Time" SortExpression="Time">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="quantity" HeaderText="Quantity">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="price" HeaderText="Price">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                </Columns>
                                
                                <HeaderStyle BackColor="LawnGreen" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5" align="right">
                            Grand Total(Include 6%SST):
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="border-color:white;" class="auto-style7">
                            <asp:Label ID="Label6" runat="server" Text="Zharif" Font-Bold="True" Font-Size="XX-Large" Font-Names="Brush Script MT"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color:white;"><br /><br />
                             
                        </td>

                    </tr>
                </table>

            </asp:Panel>
            <asp:Button ID="Button1" runat="server" Text="Download" OnClick="Button1_Click" /><br /><br />
            
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Home Page</asp:LinkButton>
        </div>
        </div>
    </form>
</body>
</html>
