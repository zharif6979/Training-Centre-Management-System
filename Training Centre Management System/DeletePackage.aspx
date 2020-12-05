<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="DeletePackage.aspx.cs" Inherits="Training_Centre_Management_System.DeletePackage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style=" height:510px;"><br /><br /><br />
        <table style=" width:700px; height:390px; background-color:deepskyblue ;" align="center">
            <tr>
                <td align="center" width="50%" colspan="2">
                    <h1>Deleting Package</h1><hr />
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
                <td align="center" width="50%" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Delete" Font-Bold="True" Font-Underline="True" ForeColor="Black" Height="36px" OnClick="Button1_Click" Width="88px" />
                    
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
