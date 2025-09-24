using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Araba_Satış_Sitesi.Classes;
using System.Data;

namespace Araba_Satış_Sitesi
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Timeout = 20;
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtEmail.Text) || string.IsNullOrWhiteSpace(txtPassword.Text))
            {
                Response.Write("<script>alert('Lütfen e-posta adresi ve şifre giriniz.');</script>");
                return;
            }

            SqlCommand commandLogin = new SqlCommand("select * from  TableUser where UserMail=@pmail and UserPassword=@ppass ", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();

            string shaPass = Sha256Converter.ComputeSha256Hash(txtPassword.Text);

            commandLogin.Parameters.AddWithValue("@pmail", txtEmail.Text);
            commandLogin.Parameters.AddWithValue("@ppass", shaPass);

            DataTable dt = new DataTable();

            try
            {
                SqlDataAdapter da = new SqlDataAdapter(commandLogin);
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    if (txtEmail.Text == "azize.kiziltepe@gmail.com")
                    {
                        Session["IsUserAdmin"] = true;
                        Session["UserMail"] = "azize.kiziltepe@gmail.com";
                        Response.Redirect("AdminDeneme.aspx");
                    }
                    else
                    {
                        Session["IsUserOnline"] = true;
                        Session["UserMail"] = txtEmail.Text;
                        Response.Redirect("ListCars.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Giriş yapılamadı. Mail adresi veya şifre hatalı.');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Giriş yapılamadı. Hata: " + ex.Message + "');</script>");
            }
        }
    }
}