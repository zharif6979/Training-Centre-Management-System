<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Quotation.aspx.cs" Inherits="Training_Centre_Management_System.Quotation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 20px;
        }
        .auto-style2 {
            height: 98px;
        }
        .auto-style3 {
            height: 75px;
        }
        .auto-style4 {
            margin-top: 21px;
        }
        .auto-style5 {
            height: 45px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="image/logo-email-1-300x93.jpg"/><br /><br /><br />
            <asp:Label ID="Label5" runat="server" Text="QUOTATION" Font-Bold="True" Font-Size="XX-Large" style="text-align:right;" Font-Names="Arial"></asp:Label>
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1">
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
                        <td>
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
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1000px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style4">
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
                       <td style="border-color:white;">
                            Quote issued by : Muhamad<br />Company Name: Nur Eco Resort Group<br />Phone:03-90217387, 019-4252766&nbsp&nbsp&nbsp&nbsp Email:nurecoresort@gmail.com
                           <br /><br />Above information is not an invoice and only an estimate of package descrive above. This estimate is non-contractual.<br />If you have any question
                           corcerning this quotation, please get back to us using contact deal above.<br />Thank you for your business.
                        </td>
                    </tr>
                    
                </table>

            </asp:Panel>
            <asp:Button ID="Button1" runat="server" Text="Download" OnClick="Button1_Click" />&nbsp&nbsp
            <asp:Button ID="Button2" runat="server" Text="Confirmation" OnClick="Button2_Click" /><br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Back To cart</asp:LinkButton>
        </div>
    </form>
</body>
</html>
