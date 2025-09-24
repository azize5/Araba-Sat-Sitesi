using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Araba_Satış_Sitesi.Classes
{
    public class SqlConnectionClass
    {

        public static System.Data.SqlClient.SqlConnection connection = new SqlConnection("Data Source=AZIZE\\MSSQLSERVER01;Initial Catalog=ArabaSatis;Integrated Security=True;Encrypt=True;TrustServerCertificate=True");
        public static void CheckConnection()
        {
            if (connection.State==System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }
            else
            {

            }
        }

    }
}