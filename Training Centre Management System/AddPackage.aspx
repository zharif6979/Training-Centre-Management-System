<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeFile="AddPackage.aspx.cs" Inherits="Training_Centre_Management_System.AddPackage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style=" height:510px;"><br /><br /><br />
        <table style=" width:700px; height:390px; background-color:deepskyblue ;" align="center">
            <tr>
                <td align="center" width="50%" colspan="2">
                    <h1>Adding Package</h1><hr />
                </td>
                
            </tr>
            <tr>
                <td align="center" width="50%">
                    <h3>Package ID:</h3>
                </td>
                <td width="50%">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="50%">
                    <h3>Package Name:</h3>
                </td>
                <td width="50%">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="50%">
                    <h3>Package Desc:</h3>
                </td>
                <td  width="50%">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="50%">
                    <h3>Image:</h3>
                </td>
                <td  width="50%">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td align="center" width="50%">
                    <h3>Price:</h3>
                </td>
                <td width="50%">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="50%" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="True" Font-Underline="True" ForeColor="Black" Height="36px" OnClick="Button1_Click" Width="88px" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <asp:Button runat="server" Text="Edit" ID="Button2" Font-Underline="True" Font-Bold="True" ForeColor="Black" Height="36px" OnClick="Button2_Click" Width="88px"/>
                    </td>
            </tr>
            <tr>
                <td align="center" width="50%" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
                
            </tr>
        </table>
    </div>

</asp:Content>
