<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Unggul.aspx.cs" Inherits="Training_Centre_Management_System.Unggul" %>
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

    <p style="color:forestgreen; font-size:30px">&nbsp&nbsp&nbsp&nbsp Nur Bukit Unggul Eco Resort</p>

    <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp An Eco-Resort fully implement the concept of a training village, and very suitable for student camping and program. Nur Bukit Unggul also has its own unique<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp landscaping concept which blend between outdoor facilities and herbs trees such as Tongkat Ali, Misai Kucing, Serai Wangi, Mas Cotek and other nutritious herbs<br />
         &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp as visitor attraction. Nur Bukit Unggul also eco-friendly and green forest is ideal for lovers of outdoor activities.
    </p>

    <p>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp FACILITIES:<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 1.CHALET – 9 Unit (38 pax)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 2.DORM – 10 Unit (200 pax)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 3.SEMIDORM – 2 Unit (28 pax)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 4.CAMP SITE – 2 Area (300pax)<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 5.HALL AIRCOND – 3 Unit<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 6.OPEN HALL – 2 Unit<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 7.CAFETERIA – 1 Unit<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 8.SURAU – 1<br />
       &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  9.WAKAF<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 10.FIELD<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 11.PARKING AREA<br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 12.WIFI
        
    </p>

    <table>
        <tr>
            <td>
                <div class="location">
             <div class="gallery">
                 <img src="image/Fasilities3.jpg" />
                 <div class="desc">FASILITIES</div>
                 </div>
                    </div>
            </td>
            <td>
                <div class="location">
             <div class="gallery">
                 <img src="image/Outdoor%20activity3.jpg" />
                 <div class="desc">OUTDOOR ACTIVITIES</div>
                 </div> </div>
            </td>
            <td>
                <div class="location">
             <div class="gallery">
                 <img src="image/Accomodation3.jpg" />
                 <div class="desc">ACCOMODATION</div>
                 </div></div>
            </td> 
        </tr>
    </table>

</asp:Content>
