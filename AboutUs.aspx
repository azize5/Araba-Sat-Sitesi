<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Araba_Satış_Sitesi.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        body {
            font-family: 'Arial', sans-serif;
            color: #333;
            background-color:lavender;
            margin: 0;
            padding: 0;
        }

        .logo-img {
            width: 15vw; /* Görselin genişliğini sayfanın genişliğinin %10'u kadar yapar */
            height: auto; /* Yüksekliği orantılı olarak ayarlar */
            max-width: 150px; /* Maksimum genişlik */
            max-height: 100px; /* Maksimum yükseklik */
            margin-right: 100px;
            margin-top: 50px;
            position: absolute;
            top: 20px;
            left: 20px;
            border-radius: 50%;
        }

        .info-card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            max-width: 1200px;
            margin: 80px auto;
            padding: 0 20px;
        }

        .info-card {
            background-color: thistle;
            border: 1px solid #ddd;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            flex: 1;
            max-width: 300px;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .info-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        .info-card h3 {
            color: darkslateblue;
            margin-bottom: 15px;
        }

        .info-card p {
            font-size: 16px;
            color: #555;
        }
      

        h2{
            color:darkslateblue;
            margin-top:50px;
            text-align:center;
        }
    </style>

    <img src="img\logo.png" alt="Logo" class="logo-img" />
    <h2> Ebasay Araba Şirketi </h2>
    <div class="info-card-container">
        <div class="info-card">
            <h3>Hakkımızda</h3>
            <p>Yılların tecrübesiyle araç alım satımında güven ve kalite sunuyoruz. Müşterilerimizin memnuniyeti, bizim için her şeyden önce gelir.</p>
        </div>
        <div class="info-card">
            <h3>Misyon</h3>
            <p>Müşterilerimize en iyi araçları en iyi fiyatlarla sunmak ve satış sonrası hizmetlerle onları desteklemek.</p>
        </div>
        <div class="info-card">
            <h3>Vizyon</h3>
            <p>Otomobil satışında lider bir marka olarak sektörde yenilikçi ve sürdürülebilir çözümler sunmak.</p>
        </div>
    </div>

</asp:Content>
