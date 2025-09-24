using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Araba_Satış_Sitesi
{
    public partial class Error : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Sunucudan son hatayı al
                Exception exception = Server.GetLastError();

                if (exception != null)
                {
                    // Hata detaylarını sayfada göster
                    LiteralErrorCode.Text = "500"; // Genellikle sunucu tarafı hataları için kod
                    LiteralErrorMessage.Text = exception.Message;

                    // Hata günlüğüne kaydet
                    LogError(exception);
                }

                // Sunucu hatasını temizle
                Server.ClearError();
            }
        }
        private void LogError(Exception ex)
        {
            // Hata günlüğü için basit bir örnek
            string logFilePath = Server.MapPath("~/App_Data/ErrorLog.txt");
            string errorMessage = $"Hata Zamanı: {DateTime.Now}\n" +
                                  $"Mesaj: {ex.Message}\n" +
                                  $"Stack Trace: {ex.StackTrace}\n" +
                                  "-------------------------------------------------\n";

            System.IO.File.AppendAllText(logFilePath, errorMessage);
        }
    }
}