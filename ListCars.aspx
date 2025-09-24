<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ListCars.aspx.cs" Inherits="Araba_Satış_Sitesi.ListCars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: lavender;
        }

        .card-body {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .card {
            border: 5px solid rgba(0, 0, 0, 0.125);
            border-radius: 0.25rem;
        }

        .card-text {
            margin:auto;
        }
    </style>

    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <div class="card mb-8">

                <table class="nav-justified">
                    <div class="row g-0">
                    <div class="col-md-4">
                        <asp:Image ID="Image1" runat="server" CssClass="card-img-top" ImageUrl='<%# Eval("CarPhoto") %>' AlternateText="Car Image" />
                    </div>
                    <div class="card-body">
                        <tr>
                            <p class="card-text fs-5">
                                <td>
                                    <asp:Label ID="Label2" runat="server" CssClass="text-primary fw-bold fs-4" Text='<%# Eval("BrandName") %>'>Araç Markası:</asp:Label>
                                    &nbsp;
                            <asp:Label ID="Label1" runat="server" CssClass="fs-3" Text='<%# Eval("CarModel") %>'> Araç Modeli:</asp:Label>
                                </td>
                            </p>
                        </tr>
                        <tr>
                            <td style="height: 20px"></td>
                        </tr>

                        <tr>
                            <td style="height: 20px"></td>
                        </tr>

                        <tr>
                            <p class="card-text fs-5">
                                <td>Yakıt Tipi:
                            <asp:Label ID="Label3" runat="server" CssClass="text-muted" Text='<%# Eval("CarFuelType") %>'></asp:Label>
                                </td>
                            </p>
                        </tr>
                        <tr>
                            <p class="card-text fs-5">
                                <td>Açıklama:
                            <asp:Label ID="Label4" runat="server" CssClass="text-secondary" Text='<%# Eval("CarDescription") %>'> </asp:Label>
                                </td>
                            </p>
                        </tr>
                        <tr>
                            <p class="card-text fs-5">
                                <td>Satıcı Adı:
                            <asp:Label ID="Label5" runat="server" CssClass="text-primary" Text='<%# Eval("CarSeller") %>'> </asp:Label>
                                    &nbsp;&nbsp;
                             <br />
                                    İletişim No:
                            <asp:Label ID="Label6" runat="server" CssClass="text-primary" Text='<%# Eval("CarContact") %>'></asp:Label>
                                </td>
                            </p>
                        </tr>

                        <tr>
                            <p class="card-text fs-5">
                                <td>Araç Fiyatı:
                            <asp:Label ID="Label7" runat="server" CssClass="text-success" Text='<%# Eval("CarPrice") %>'> </asp:Label>
                                </td>
                            </p>
                        </tr>

                        <tr>
                            <td style="height: 20px"></td>
                        </tr>
                    </div>

                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
             </div>
        </ItemTemplate>
    </asp:DataList>


</asp:Content>
