<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Bestari.aspx.cs" Inherits="Training_Centre_Management_System.Bestari" %>
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

    <p style="color:forestgreen; font-size:30px">&nbsp&nbsp&nbsp&nbsp Nur Laman Bestari Eco Resort</p>

    <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Located beside the Sungai Tua Recreational Forest, near Ulu Yam and only 15 minute from Batu Cave, Selangor. Our visitors will enjoy the beauty of nature with<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp comfortable environment which are peace and quiet. We also provide various type of exciting activities and packages.<br />
        
    </p>

    <p>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp FACILITIES:<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 1.CHALET – 32 CHALET (140 pax)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 2.DORM – 4 Unit = (40-56 paxs)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 3.SEMIDORM – 4 Unit = (64 paxs) 16×4<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 4.TERATAK  – 3 Unit = (11paxs)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 5.BULUH – 4 Unit = (8 paxs) + 1 (Dalam Proses)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 6.4A NUR  – 1 Unit = (5 paxs) Double Decker<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 7.VIP – 2 Unit = (12 paxs)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 8.NO. 8-11   – 4 Unit = (16 paxs) Double Decker<br />
       &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  9.HAJI – 1 Unit = (5 pax) Double Decker<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 10.RIVER VIEW COTTAGE – 6 Unit (23 pax)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 11.ASTANA – 1 Unit (6 pax) Double Decker<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 12.WADI HANA – 2 Unit (8pax)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 13.WATER VILLA – 4 Unit (29pax)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 14.DEMAK – 2 Unit (12pax)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 15.CAMP SITE – 500pax<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 16.HALL AIRCOND – 3 Unit<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 17.OPEN HALL<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 18.FIELD<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 19.SURAU<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 20.WAKAF<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 21.PARKING AREA<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 22.CAFETERIA
    </p>

    <table>
        <tr>
            <td>
                <div class="location">
             <div class="gallery">
                 <img src="image/Fasiliti2.jpeg" />
                 <div class="desc">FASILITIES</div>
                 </div>
                    </div>
            </td>
            <td>
                <div class="location">
             <div class="gallery">
                 <img src="image/outdoor%20activiti2.jpg" />
                 <div class="desc">OUTDOOR ACTIVITIES</div>
                 </div> </div>
            </td>
            <td>
                <div class="location">
             <div class="gallery">
                 <img src="image/accomodation2.jpg" />
                 <div class="desc">ACCOMODATION</div>
                 </div></div>
            </td> 
        </tr>
    </table>

</asp:Content>
