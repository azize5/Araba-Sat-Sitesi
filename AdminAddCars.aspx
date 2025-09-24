<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminAddCars.aspx.cs" Inherits="Araba_Satış_Sitesi.AdminAddCars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
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

        .btn-primary {
            display: flex; /* Flexbox kullanımı */
            justify-content: center; /* Yatayda ortalama */
            margin-top: 30px; /* Üstten boşluk */
            width: 100%;
        }

        .button-container {
            display: flex;
            justify-content: center; /* Yatayda ortalama */
            gap: 10px; /* Butonlar arasında boşluk */
        }

        .btn-danger {
            display: flex; /* Flexbox kullanımı */
            justify-content: center; /* Yatayda ortalama */
            margin-top: 30px; /* Üstten boşluk */
            width: 100%;
        }
    </style>
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>

            <h2 id="NestedPageHeader" cssclass="form-control">Admin Araba Onaylama</h2>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="txtSellerName">Araç Satıcısı:</label>
                            <asp:TextBox ID="txtSellerName" runat="server" Text='<%# Eval("CarSeller") %>' ReadOnly="True" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="txtSellerPhone">İletişim Telefon Numarası :</label>
                            <asp:TextBox ID="txtSellerPhone" runat="server" Text='<%# Eval("CarContact") %>' TextMode="MultiLine" ReadOnly="True" CssClass="form-control"></asp:TextBox>

                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="txtModel">Araba Modeli:</label>
                            <asp:Label ID="lblModel" runat="server" Text='<%# Eval("CarModel") %>' CssClass="form-control"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="txtPhotoLink">Araba Fotoğrafı :</label>
                            <asp:TextBox ID="txtPhotoLink" runat="server" Text='<%# Eval("CarPhoto") %>' ReadOnly="True" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="txtDescription">Açıklama :</label>
                            <asp:TextBox ID="txtDescription" runat="server" Text='<%# Eval("CarDescription") %>' ReadOnly="True" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="txtFuelType">Araba Yakıt Tipi:</label>
                            <asp:TextBox ID="txtFuelType" runat="server" Text='<%# Eval("CarFuelType") %>' ReadOnly="True" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="txtPrice">Araba Fiyatı:</label>
                            <asp:TextBox ID="txtPrice" runat="server" Text='<%# Eval("CarPrice") %>' ReadOnly="True" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <div class="button-container">
                                <!-- İlanı Onayla butonu -->
                                <a href="ApproveCars.aspx?carid=<%# Eval("CarID") %>" class="btn btn-primary" style="display: inline-block; padding: 10px 20px; margin-right: 10px;">İlanı Onayla</a>

                                <!-- Reddet butonu -->
                                <a href="RejectCars.aspx?carid=<%# Eval("CarID") %>" class="btn btn-danger" style="display: inline-block; padding: 10px 10px;">Reddet</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </ItemTemplate>
    </asp:DataList>
</asp:Content>
