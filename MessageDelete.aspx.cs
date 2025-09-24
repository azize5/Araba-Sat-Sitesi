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
    public partial class MessageDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int selectedID;
                if (int.TryParse(Request.QueryString["id"], out selectedID))
                {
                    using (SqlCommand commandDelete = new SqlCommand("DELETE FROM TableContact WHERE ContactID=@id", SqlConnectionClass.connection))
                    {
                        SqlConnectionClass.CheckConnection();
                        commandDelete.Parameters.AddWithValue("@id", selectedID);
                        commandDelete.ExecuteNonQuery();
                    }
                    Response.Redirect("Messages.aspx");
                }
                else
                {

                    Response.Redirect("Error.aspx");
                }
            }
        }
    }
}