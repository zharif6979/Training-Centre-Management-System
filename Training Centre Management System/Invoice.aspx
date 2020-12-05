<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="Training_Centre_Management_System.Invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 100px;
        }
        .auto-style2 {
            height: 61px;
        }
        .auto-style3 {
            height: 112px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="image/logo-email-1-300x93.jpg"/><br /><br />
            <asp:Label ID="Label5" runat="server" Text="INVOICE" Font-Bold="True" Font-Size="XX-Large"></asp:Label><br /><br /><hr />
            <asp:Panel ID="Panel1" runat="server">
                <table border="1">
                    <tr>
                        <td style="border-color:white;" class="auto-style1">
                            Company Address:<br />
                            Batu 19 3/4 Ulu Perdik,<br /> 41300 Hulu Langat,<br />Selangor, Malaysia.<br /><br /><hr />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color:white;" class="auto-style2">Package No:
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
                            Date:
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
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
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1000px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
                                    <asp:BoundField DataField="publisher_date" HeaderText="Date" SortExpression="date">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Times" HeaderText="Time" SortExpression="Times">
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
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label><br /><br />
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color:white;" align="right">
                            <asp:Label ID="Label6" runat="server" Text="Zharif" Font-Bold="True" Font-Size="XX-Large" Font-Names="Brush Script MT"></asp:Label><br /><br />
                            
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color:white;">
                            Terms & Condition<br />Payment is due within 15 days<br /><br />Please make checks payable to: Nur Eco Resort Group
                        </td>
                    </tr>
                    <tr>
                        <td style="border-color:white;">
                           <br />Nur Eco Resort Group&nbsp&nbsp&nbsp&nbsp Phone:03-90217387, 019-4252766&nbsp&nbsp&nbsp&nbsp Email:nurecoresort@gmail.com
                        </td>

                    </tr>
                </table>

            </asp:Panel>
            <asp:Button ID="Button1" runat="server" Text="Download" OnClick="Button1_Click" />&nbsp&nbsp
            <asp:Button ID="Button2" runat="server" Text="Confirmation" OnClick="Button2_Click" /><br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">&lt;&lt;Back</asp:LinkButton>
        </div>
    </form>
</body>
</html>
