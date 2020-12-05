<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="Training_Centre_Management_System.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
.row img {
height:auto;
width: auto;
display: block;
  margin-left: auto;
  margin-right: auto;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
            <div class="row">
                <div class="col-md-5 mx-auto" >

                    <div class="card">
                        <div class="card-body">

                            <div class="row">         
                                        <img src="image/images.jpg"  class="center"/> 
                            </div>
                            <div class="row">
                     <div class="col">
                        <center>
                           <h4>Member Sign Up</h4>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                    <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                    
                    <div class="row">
                     <div class="col-md-6">
                        <label>Date Of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date Of Birth" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                    
                    <div class="row">
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                 <div class="row">
                     <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                            <asp:DropDownList class="form-control"  ID="DropDownList1" runat="server">
                               <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Perlis" Value="Perlis" />
                              <asp:ListItem Text="Kedah" Value="Kedah" />
                              <asp:ListItem Text="Perak" Value="Perak" />
                              <asp:ListItem Text="Pulau Penang" Value="Pulau Penang" />
                              <asp:ListItem Text="Kelantan" Value="Kelantan" />
                              <asp:ListItem Text="Terengganu" Value="Terengganu" />
                              <asp:ListItem Text="Pahang" Value="Pahang" />
                              <asp:ListItem Text="Selangor" Value="Selangor" />
                              <asp:ListItem Text="Kuala Lumpur" Value="Kuala Lumpur" />
                              <asp:ListItem Text="Melaka" Value="Melaka" />
                              <asp:ListItem Text="Negeri Sembilan" Value="Negeri Sembilan" />
                              <asp:ListItem Text="Johor" Value="Johor" />
                              <asp:ListItem Text="Sabah" Value="Sabah" />
                              <asp:ListItem Text="Sarawak" Value="Sarawak" />
                            </asp:DropDownList>

                        </div>
                     </div>
                  </div>
                    
                    <div class="row">
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col-md-4">
                        <label>Pincode</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                 <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                  

                  <div class="row">
                     <div class="col">
                         <center>
                           <span class="badge badge-pill badge-info">Login Credentials</span>
                        </center>
                        </div>
                              </div>

                        <div class="row">
                     <div class="col-md-4">
                        <label>Member ID</label>
                        <div class="form-group">
                           <asp:TextBox Class="form-control" ID="TextBox8" runat="server" placeholder="User ID" ></asp:TextBox>
                        </div>
                     </div>
                  </div>

                 <div class="row">
                     <div class="col">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox Class="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                        
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClientClick="OpenDialogToTest(); return true;" OnClick="Button1_Click" />
                        </div>
                        
                     </div>
                  </div>
                    <a href="home.aspx"><< Back to Home</a><br><br>
               </div>
            </div>
        </div>
            
         
      

</asp:Content>
