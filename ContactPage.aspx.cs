using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Araba_Satış_Sitesi.Classes;
using System.ComponentModel.Design;

namespace Araba_Satış_Sitesi
{
    public partial class ContactPage : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }
     protected void btnsave_Click(object sender,EventArgs e)
        {

            SqlCommand commandAdd = new SqlCommand("insert into TableContact(ContactMessage,ContactMail,ContactName,ContactTopic)" +
                " values(@pmsg,@pmail,@pname,@ptopic)",SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            commandAdd.Parameters.AddWithValue("@pmsg", txtMessage.Text);
            commandAdd.Parameters.AddWithValue("@pmail", txtEmail.Text);
            commandAdd.Parameters.AddWithValue("@pname", txtName.Text);
            commandAdd.Parameters.AddWithValue("@ptopic", txtTopic.Text);

            commandAdd.ExecuteNonQuery();
        }
}
}