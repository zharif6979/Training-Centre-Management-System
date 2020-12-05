<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="Training_Centre_Management_System.activities" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
.container{
    max-width:1500px;
    margin:auto;
    background:#FFFFFF;
    overflow:auto;
}
.gallery{
    margin:5px;
    border:1px solid #ccc;
    float:left;
    width:390px;
}
.gallery img{
    width:100%;
    height:auto;
}
.desc{
    padding:15px;
    text-align:center;
}
.center button{
    margin-left:auto;
    margin-right:auto;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="color:forestgreen; font-size:30px">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Activities</p>

    <div class="container">
        <div class="gallery">
            <img src="image/KEMBARA-HUTAN-DENGAN-ATV-1-352x230.jpg" />
            <div class="desc"> ATV RIDE</div>
        </div>
        <div class="gallery">
            <img src="image/Outdoor-Nur-Eco-Resort-20141110-WA0011-1-300x225.jpg" />
            <div class="desc"> POND RAFTING</div>
        </div>
        <div class="gallery">
            <img src="image/Canyoning.jpg" />
            <div class="desc"> CANYONING</div>
        </div>
        <div class="gallery">
            <img src="image/AKTIVITI-KAYAK-DI-KOLAM-1-300x225.jpg" />
            <div class="desc"> KAYAKING</div>
        </div>
        <div class="gallery">
            <img src="image/tariktali-1-300x225.jpg" />
            <div class="desc"> TUG OF WAR</div>
        </div>
        <div class="gallery">
            <img src="image/SurvivalCooking-1-300x225.jpg" />
            <div class="desc"> SURVIVAL COOKING</div>
        </div>
        <div class="gallery">
            <img src="image/archery.jpg" />
            <div class="desc"> ARCHERY</div>
        </div>
        <div class="gallery">
            <img src="image/AKTIVITI-JUNGLE-TREKKING-1-228x300.jpg" />
            <div class="desc"> JUNGLE TRACKING</div>
        </div>
        <div class="gallery">
            <img src="image/hanging-bridge2-225x300.jpg" />
            <div class="desc"> HANGING BRIDGE</div>
        </div>
        </div>
</asp:Content>
