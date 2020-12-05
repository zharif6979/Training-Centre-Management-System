<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeFile="Packages.aspx.cs" Inherits="Training_Centre_Management_System.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 191px;
        }
        .auto-style9 {
            width: 339px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:DataList ID="DataList1" runat="server" DataKeyField="PackageId" DataSourceID="SqlDataSource1" Height="293px" Width="400px" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="text-align:center; background-color:white" class="auto-style9">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pname") %>' Font-Bold="True" Font-Names="Arial" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td style="text-align:center;" class="auto-style9">
                        <asp:Image ID="Image1" runat="server" BorderColor="Black" BorderWidth="1px" Height="279px" Width="310px" ImageUrl='<%# Eval("Pimage") %>'/>
                    </td>
                </tr>
                 <tr>
                    <td style="text-align:center; background-color:white" class="auto-style9">
                        <asp:Label ID="Label2" runat="server" Text="Price: RM" Font-Bold="True" Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Pprice")  %>' Font-Bold="True" Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td align="left" class="auto-style9">Quantity:&nbsp&nbsp
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="auto-style9">Date:
                        <asp:TextBox ID="Datetxt" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left">Time:
                        <asp:TextBox ID="Timetxt" runat="server" placeholder="Time" TextMode="Time"></asp:TextBox>
                    </td>
                </tr>
                <caption>
                    <br />
                    <tr>
                        <td class="auto-style9" style="text-align:center">
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("PackageId") %>' CommandName="AddToCart" Height="40px" ImageUrl="~/image/Addtocart.jpg" OnClick="Page_Load" Width="160px" />
                        </td>
                    </tr>
                </caption>
             
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tcmsDBConnectionString %>" SelectCommand="SELECT [PackageId], [Pname], [Pimage], [Pprice] FROM [Package1]"></asp:SqlDataSource>
</asp:Content>
