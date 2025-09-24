<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Araba_Satış_Sitesi.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <style>
        h2 {
            margin-top:50PX;
            margin-bottom: 50px;
            margin-left: 30px;
            font-weight: bold;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: lavender;
            height: 100vh;
            margin: 0;
        }

        

        .form-group {
            margin-bottom: 30px;
            margin-left: 200px;
            width: 800px;
        }

            .form-group label {
                display: block;
                margin-bottom: 5px;
                 width: 800px;
            }

            .form-group input {
                width: 800px;
                padding: 8px;
                box-sizing: border-box;
                border: 1px solid #ccc;
                border-radius: 4px;
            }

        .btn {
            width: 800px;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 30px;
             margin-left: 200px;
        }

            .btn:hover {
                background-color: #0056b3;
            }
    </style>

   
        <h2>Kayıt Ol</h2>
        <div class="form-group">
            <label for="email">E-posta</label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="E-posta adresinizi girin" />
        </div>
        <div class="form-group">
            <label for="password">Şifre</label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Şifrenizi girin" />
        </div>
        <asp:Button ID="btnRegister" runat="server" CssClass="btn" Text="Kayıt Ol" OnClick="btnRegister_Click" />
    




</asp:Content>
