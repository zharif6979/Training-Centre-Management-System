<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeFile="AddtoCart2.aspx.cs" Inherits="Training_Centre_Management_System.AddtoCart2"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style=" margin: 0 auto;">
        <h2 style="text-decoration: underline overline blink; color:lawngreen">You Have The Following Product In Your Cart</h2>
        <br /><br />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Colonna MT" Font-Size="X-Large" NavigateUrl="~/Packages.aspx">Continue Shopping</asp:HyperLink>
        <br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="Black" BorderWidth="5px" EmptyDataText="No Product Available In Shopping Cart" Font-Bold="True" Height="257px" ShowFooter="True" Width="1100px" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="pno" HeaderText="Package No">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="pid" HeaderText="Package ID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="pimage" HeaderText="Image">
                    <ControlStyle Height="300px" Width="340px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="pname" HeaderText="Details">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="publish_date" HeaderText="Date" SortExpression="publish_date">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Times" HeaderText="Time" SortExpression="Time">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="pprice" HeaderText="Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="pquantity" HeaderText="Quantity">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ptotalprice" HeaderText="Total Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="LawnGreen" Font-Bold="True" ForeColor="Black" />
            <HeaderStyle BackColor="LawnGreen" />
        </asp:GridView>

        

        <br />
        <asp:Button ID="Button1" runat="server" Text="Proceed" BackColor="LawnGreen" BorderColor="Black" BorderStyle="Ridge" Font-Bold="True" Font-Size="Large" Height="46px" Width="135px" OnClick="Button1_Click" />
    </div>
</asp:Content>
