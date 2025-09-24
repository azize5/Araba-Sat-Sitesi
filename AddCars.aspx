<%@ Page Title="" Language="C#" MasterPageFile="~/UserLayout.Master" AutoEventWireup="true" CodeBehind="AddCars.aspx.cs" Inherits="Araba_Satış_Sitesi.AddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        h2{
            margin-left:30px;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: lavender;
        }

        .page-header {
            text-align: left; /* Başlığı sola ortalar */
            padding: 15px; /* İç boşluk */
            margin: 20px 10px; /* Üst ve alt boşluk */
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-control {
            width: 100%;
        }

        .form-row {
            margin-bottom: 15px;
        }

        .large-textbox {
            height: 100px; /* Larger height for description */
        }

        .btn-custom {
            width: 100%;
            height: 40px;
        }

        .button-container {
            display: flex; /* Flexbox kullanımı */
            justify-content: center; /* Yatayda ortalama */
            margin-top: 30px; /* Üstten boşluk */
            width: 100%;
        }
    </style>
<h2 id="NestedPageHeader">Araba Ekle</h2>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="txtSellerName">Adınızı Giriniz:</label>
                        <asp:TextBox ID="txtSellerName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="txtSellerPhone">Numaranızı Giriniz:</label>
                        <asp:TextBox ID="txtSellerPhone" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="ddlBrand">Araba Markası Seçiniz:</label>
                        <asp:DropDownList ID="ddlBrand" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="txtModel">Araba Modelini Yazınız:</label>
                        <asp:TextBox ID="txtModel" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="txtPhotoLink">Araba Fotoğraf Linkini:</label>
                        <asp:TextBox ID="txtPhotoLink" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="txtDescription">Açıklama:</label>
                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="txtFuelType">Araba Yakıt Tipini Giriniz:</label>
                        <asp:TextBox ID="txtFuelType" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="txtPrice">Araba Fiyatını Giriniz:</label>
                        <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <div class="button-container">
                    <asp:Button ID="btnSubmit" runat="server" Text="İlanı Gönder" CssClass="btn btn-primary btn-custom" OnClick="btnSubmit_Click" />
                </div>
            </div>
        </div>
    </form>
</asp:Content>