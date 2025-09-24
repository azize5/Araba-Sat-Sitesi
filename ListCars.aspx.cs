using Araba_Satış_Sitesi.Classes;
using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Araba_Satış_Sitesi
{
    public partial class ListCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDataList();
            }
        }
        private void BindDataList()
        {
            // Veritabanı bağlantı komutu
            SqlCommand commandList = new SqlCommand("select  CarID, CarBrandID,CarModel,CarFuelType,CarDescription,CarContact,CarSeller,CarPhoto,CarPrice,CarConfirmation, BrandID,BrandName from TableCar inner join TableBrand on TableCar.CarBrandID=TableBrand.BrandID where CarConfirmation=@pcon ", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            commandList.Parameters.AddWithValue("@pcon", true);

            // Veri okuma işlemi
            SqlDataReader dr = commandList.ExecuteReader();

            // DataList'e veri bağlama işlemi
            DataList1.DataSource = dr;
            DataList1.DataBind();

            // SqlDataReader'ı kapatma
            dr.Close();
        }
    }
}
