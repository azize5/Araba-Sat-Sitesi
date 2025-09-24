<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="Araba_Satış_Sitesi.ContactPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: lavender;
        }

        .form-group {
            width: 800px;
            margin-left: 50px;
        }

        .header {
            margin-bottom: 30px;
            margin-left: 50px;
        }

        .form-control {
            margin-bottom: 15px;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            width: 800px;
            padding: 10px;
            margin-left: 50px;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #004080;
        }
    </style>

    <h2 class="header">İletişim</h2>

    <div class="form-group">
        <asp:Label ID="lblName" runat="server" Text="Adınız"></asp:Label>
        <asp:TextBox ID="txtName" CssClass="form-control" runat="server" Placeholder="Adınızı girin" required="required"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="lblEmail" runat="server" Text="E-posta"></asp:Label>
        <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" TextMode="Email" Placeholder="E-posta adresinizi girin" required="required"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="lblTopic" runat="server" Text="Konu"></asp:Label>
        <asp:TextBox ID="txtTopic" CssClass="form-control" runat="server" Placeholder="Konu başlığını girin" required="required"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="lblMessage" runat="server" Text="Mesajınız"></asp:Label>
        <asp:TextBox ID="txtMessage" CssClass="form-control" runat="server" TextMode="MultiLine" Rows="5" Placeholder="Mesajınızı yazın" required="required"></asp:TextBox>
    </div>
    <asp:Button ID="btnsave" CssClass="btn btn-primary" runat="server" Text="İletinizi Gönderin" OnClick="btnsave_Click" />
</asp:Content>