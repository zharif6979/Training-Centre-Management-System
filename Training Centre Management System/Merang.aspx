<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Merang.aspx.cs" Inherits="Training_Centre_Management_System.Merang" %>
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

    <p style="color:forestgreen; font-size:30px">&nbsp&nbsp&nbsp&nbsp Nur Merang Inn Eco Resort</p>

    <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Against a backdrop of tropical forests and the rushing wind and the waves of the South China Sea coast. Located 30 minute from the Kuala Terengganu city. The<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp only Nur Eco Resort located near the sea with more on beach and water activity. At Nur Merang Inn provide training for indoor activities and outdoor activities as<br />
         &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp well as vacation packages such as visiting the nearby islands for scuba and snorkelling trip such as Pulau Redang, Pulau Bidong, Pulau Perhentian and others.
    </p>

    <p>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp FACILITIES:<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 1.CHALET – 16 Unit ( 3 pax)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 2.CAMPSITE – 200 pax<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 3.AIRCOND HALL for 60 pax<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 4.OPEN HALL for  200 pax<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 5.SURAU<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 6.FIELD<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 7.BEACH<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 8.PARKING AREA
       
    </p>

    <table>
        <tr>
            <td>
                <div class="location">
             <div class="gallery">
                 <img src="image/FASILITI4.jpg" />
                 <div class="desc">FASILITIES</div>
                 </div>
                    </div>
            </td>
            <td>
                <div class="location">
             <div class="gallery">
                 <img src="image/Outdoor%20activity4.jpg" />
                 <div class="desc">OUTDOOR ACTIVITIES</div>
                 </div> </div>
            </td>
            <td>
                <div class="location">
             <div class="gallery">
                 <img src="image/Accomodation4.jpg" />
                 <div class="desc">ACCOMODATION</div>
                 </div></div>
            </td> 
        </tr>
    </table>

</asp:Content>
