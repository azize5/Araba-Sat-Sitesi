using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Araba_Satış_Sitesi.Classes;

namespace Araba_Satış_Sitesi
{
    public partial class AddCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            {
                if (Page.IsPostBack == false)
                {
                    SqlCommand commandListBrands = new SqlCommand("select * from TableBrand", SqlConnectionClass.connection);
                    SqlConnectionClass.CheckConnection();
                    SqlDataReader dr = commandListBrands.ExecuteReader();

                    ddlBrand.DataTextField = "BrandName";
                    ddlBrand.DataValueField = "BrandID";
                    ddlBrand.DataSource = dr;
                    ddlBrand.DataBind();
                    dr.Close();
                }
            }
            else if (Convert.ToBoolean(Session["IsUserAdmin"]) == true)
            {
                Response.Redirect("ListCars.apsx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand commandAdd = new SqlCommand("insert into TableCar (CarModel,CarBrandID,CarFuelType,CarDescription,CarContact,CarSeller,CarPhoto,CarPrice)" +
               "values(@pmodel,@pbrand,@pfuel,@pdesc,@pcontact,@pseller,@pphoto,@pprice)", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandAdd.Parameters.AddWithValue("@pmodel", txtModel.Text);
            commandAdd.Parameters.AddWithValue("@pbrand", Convert.ToInt32(ddlBrand.SelectedValue));
            commandAdd.Parameters.AddWithValue("@pfuel", txtFuelType.Text);
            commandAdd.Parameters.AddWithValue("@pdesc", txtDescription.Text);
            commandAdd.Parameters.AddWithValue("@pcontact", txtSellerPhone.Text);
            commandAdd.Parameters.AddWithValue("@pseller", txtSellerName.Text);
            commandAdd.Parameters.AddWithValue("@pphoto", txtPhotoLink.Text);
            commandAdd.Parameters.AddWithValue("@pprice", txtPrice.Text);


            try
            {
                commandAdd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                // Hata durumunda mesaj gösterin veya log kaydedin
                Response.Write("Bir Hatayla Karşılaştık " + ex.Message);
            }
        }
    }
}