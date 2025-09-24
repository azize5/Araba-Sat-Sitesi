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
    public partial class Messages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand commandList = new SqlCommand("Select*from TableContact",SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            SqlDataReader dr = commandList.ExecuteReader();
            DataListMessages.DataSource=dr;
            DataListMessages.DataBind();    
            dr.Close();
        }
    }
}