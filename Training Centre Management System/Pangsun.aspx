<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Pangsun.aspx.cs" Inherits="Training_Centre_Management_System.Pangsun" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

.location {
    max-width: 1500px;
    margin: auto;
    background: #FFFFFF;
    overflow: auto;
}

.gallery {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 390px;
}

.gallery img {
        width: 100%;
        height: auto;
    }

.desc {
    padding: 15px;
    text-align: center;
}
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p style="color:forestgreen; font-size:30px">&nbsp&nbsp&nbsp&nbsp Nur Lembah Pangsun Eco Resort</p>

    <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp A lush tropical forest of Hulu Langat, just 35 minute from Kuala Lumpur. By using the concept of Eco-Resort we provide comfortable accommodation and<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp facilities. Besides that, we also serve a variety of activities both indoor and outdoor, and with a unique combination of land, air and water adventures regardless of<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp age.
    </p>

    <p>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp FACILITIES:<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 1.CHALET – 20 Unit  (98 paxs)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 2.VILLA – 3 Unit  (22 paxs)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 3.HOUSE – 7 Unit (34 paxs)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 4.SEMIDORM – 4 Unit  (51 paxs)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 5.DORM – 4 Unit  (96 paxs)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 6.DORM ROOM – 2 unit  (10 paxs)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 7.CAMPSITE – 2 Area (500 paxs)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 8.HALL – 3 Unit (Aircond)<br />
       &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  9.HALL – 1 Unit (Fan)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 10.OPEN HALL – 2 Unit<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 11.SURAU<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 12.CAFETERIA<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 13.FIELD<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 14.POND<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 15.WAKAF
    </p>

    <table>
        <tr>
            <td>
                <div class="location">
             <div class="gallery">
                <img src="image/Fasiliti.jpg" />
                 <div class="desc">FASILITIES</div>
                 </div>
                    </div>
            </td>
            <td>
                <div class="location">
             <div class="gallery">
                <img src="image/outdoor%20activiti.jpg" />
                 <div class="desc">OUTDOOR ACTIVITIES</div>
                 </div> </div>
            </td>
            <td>
                <div class="location">
             <div class="gallery">
                <img src="image/accomodation.jpg" />
                 <div class="desc">ACCOMODATION</div>
                 </div></div>
            </td> 
        </tr>
    </table>

</asp:Content>
