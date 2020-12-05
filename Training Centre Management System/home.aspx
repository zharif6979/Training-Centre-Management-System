<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Training_Centre_Management_System.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="bootstrap/css/style.css" rel="stylesheet" />
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
        .auto-style2 {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <main>
        <div class="hero">
            <div class="container">
                <div class="main-heading">
                    <h1 class="title" style="color: #FFFFFF">Discover</h1>
            <h2 class="subtitle" style="color: #FFFFFF">Great resorts</h2>
        
                    <a class="btn btn-gradient" href="gallery.aspx">Explore now
            <span class="dots"><i class="fas fa-ellipsis-h"></i></span>
                    </a>
                </div>
            </div>
            
            
            </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <p>NUR ECO RESORT GROUP, is the name given to represent four most wonderful NUR eco-resorts  in the peninsular of Malaysia that offers  natural charm and spectacular beauty of  tropical  flora and fauna<br><br>

Tropical rainforest, crystal clear water and stoney river, waterfall,  pond and lakes, hills and valleys, close to nature, near to city,  can be considered as the standard backdrop for all resorts under the NUR ECO RESORT GROUP<br><br>

The ideal combinations of back to nature environment,  simple and comfortable accommodations,  well equipped halls and training rooms, interesting indoor activities,  adventurous and challenging outdoor activities, attract  all walk of life to the resort.<br><br>

Individuals, families, students, government and corporate groups come to unwind or mainly to participate in sessions namely teambonding courses, seminars, retreats and family day event in the resort. Others simply come to appreciate or gather priceless information regarding  flora and fauna that can be found surrounding all NUR</p>
                </div>
            </div>
        </div>
        <br />
        <div class="container"><p style="color:lawngreen; font-size:160%;">&nbsp&nbsp&nbsp Nur Eco Resort Locations</p></div>
        
        <table>
            <tr>
                <td>
                    <div class="location">
                     <div class="gallery">
            <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/image/Lembah Pangsun.jpg" CommandName="LembahPangsun" Width="387px" OnClick="Button1_Click"/>
            <div class="desc">Hulu Langat, Selangor</div>
                         </div>
                        </div>
                </td>
                <td>
                    <div class="location">
             <div class="gallery">
            <asp:ImageButton ID="ImageButton2" runat="server"       ImageUrl="~/image/Laman Bestari.jpg"    CommandName="Laman Bestari" Width="387px" OnClick="Button2_Click"/>
            <div class="desc"> Sungai Tua, Selangor</div>
        </div>
                        </div>
                </td>
                
                <td>
                    <div class="location">
             <div class="gallery">
                 <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/image/Nur Bukit Unggul.jpg" CommandName="Bukit Unggul" Width="387px" OnClick="Button3_Click" CssClass="auto-style2"/>
                 <div class="desc"> Sungai Tua, Selangor</div>
                    </div>
                        </div>
                </td>
               
                <td>
                     <div class="location">
             <div class="gallery">
                 <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/image/Nur Merang inn.jpg" CommandName="Merang inn" Width="387px" OnClick="Button4_Click" />
                 <div class="desc"> Sungai Tua, Selangor</div>
                 </div>
                        </div>
                </td>
            </tr>
        </table>
       
    </main>

</asp:Content>
