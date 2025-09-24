<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="Araba_Satış_Sitesi.Messages" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: lavender;
            margin-left: 30px;
        }

        h2 {
            margin-top: 50px;
            margin-bottom: 30px;
            margin-left: 30px;
            font-weight: bold;
            font-size: 28px;
            color: #333;
        }

        .table-con {
            width: 100%;
            margin-top: 20px;
            background-color: #f8f4ff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 10px;
        }



        .message-item {
            display: flex;
            flex-wrap: wrap; /* Yatayda hizalanan öğeler alta geçer */
            flex: 1 1 calc(33% - 20px); /* Genişliği ayarla */
            min-width: 300px; /* Minimum genişlik */
            background-color: #98a3c4;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 5px;
            margin-bottom: 20px;
        }

        .data-list-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 10px;
        }

            .data-list-table td {
                padding: 15px;
                font-size: 16px;
                background-color: #98a3c4;
                border-bottom: 1px solid #98a3c4;
            }

            .data-list-table label {
                font-weight: bold;
                font-size: 14px;
                color: #555;
                margin-bottom: 8px;
                display: block;
            }

        .read-only-textbox {
            width: 100%;
            height: 150px;
            background-color: #f0f0f0;
            border: 1px solid #ccc;
            padding: 10px;
            font-size: 14px;
            color: #333;
            border-radius: 10px;
        }
    </style>

    <h2>Mesajlar</h2>

    <asp:Table ID="tblMessages" runat="server" CssClass="table-con">
        <asp:TableRow>
            <asp:TableCell>
                <asp:DataList ID="DataListMessages" runat="server">
                    <ItemTemplate>
                        <div class="message-item">
                            <table class="data-list-table">
                                <tr>
                                    <td>
                                        <asp:Label ID="lblSenderName" runat="server" Text="Gönderen Kişi: "></asp:Label>
                                        <asp:Label ID="lblSenderNameValue" runat="server" Text='<%# Eval("ContactName") %>'></asp:Label>
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <asp:Label ID="lblSenderEmail" runat="server" Text="Gönderen Kişinin Mail Adresi: "></asp:Label>
                                        <asp:Label ID="lblSenderEmailValue" runat="server" Text='<%# Eval("ContactMail") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbltopic" runat="server" Text="Konu: "></asp:Label>
                                        <asp:Label ID="txttopic" runat="server" Text='<%# Eval("ContactTopic") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblMessage" runat="server" Text="Mesaj:"></asp:Label><br />
                                        <asp:TextBox ID="txtMessage" runat="server" Text='<%# Eval("ContactMessage") %>' TextMode="MultiLine" ReadOnly="True" CssClass="read-only-textbox"></asp:TextBox>
                                    </td>
                                </tr>
                                <a href="MessageDelete.aspx?id=<%# Eval("ContactID") %>">
                                    <div class="btn btn-danger">Sil</div>
                                </a>

                            </table>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>
