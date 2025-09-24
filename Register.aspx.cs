using Araba_Satış_Sitesi.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace Araba_Satış_Sitesi
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtEmail.Text) || string.IsNullOrWhiteSpace(txtPassword.Text))
            {
                Response.Write("<script>alert('Lütfen e-posta adresi ve şifre giriniz.');</script>");
                return;
            }

            SqlCommand commandRegister = new SqlCommand("INSERT INTO TableUser (UserMail, UserPassword) VALUES (@pmail, @ppass)", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();

            string newPass = Sha256Converter.ComputeSha256Hash(txtPassword.Text);

            commandRegister.Parameters.AddWithValue("@pmail", txtEmail.Text);
            commandRegister.Parameters.AddWithValue("@ppass", newPass);

            try
            {
                int rowsAffected = commandRegister.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    Response.Write("<script>alert('Kayıt başarılı!');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Kayıt yapılamadı. Lütfen tekrar deneyin.');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Kayıt başarısız: " + ex.Message + "');</script>");
            }
        }
    }
    }
