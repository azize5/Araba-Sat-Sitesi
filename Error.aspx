<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="Araba_Satış_Sitesi.Error" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hata - Araba Satış Sitesi</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: lavender;
            color: #333;
            text-align: center;
            padding: 50px;
            margin: 0;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #e74c3c;
            font-size: 24px;
            margin-bottom: 10px;
        }
        p {
            font-size: 16px;
            margin: 10px 0;
        }
        a {
            color: #3498db;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
        .error-details {
            margin-top: 20px;
            padding: 10px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 4px;
            text-align: left;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Bir Hata Oluştu</h1>
        <p>Üzgünüz, beklenmeyen bir hata oluştu. Sorunu çözmek için gerekli işlemleri yapıyoruz.</p>
        <p>Lütfen daha sonra tekrar deneyin veya aşağıdaki bağlantılardan birini kullanarak ana sayfaya dönün:</p>
        <p><a href="ListCars.aspx">Ana Sayfaya Dön</a> | <a href="ContactPage.aspx">Bize Ulaşın</a></p>

        <div class="error-details">
            <h2>Hata Detayları:</h2>
            <p>Hata kodu: <asp:Literal ID="LiteralErrorCode" runat="server" /></p>
            <p>Hata mesajı: <asp:Literal ID="LiteralErrorMessage" runat="server" /></p>
        </div>
    </div>
</body>
</html>