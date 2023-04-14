using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace to_do_it

{
    public partial class Login : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {            
            LblWarning.Visible = false;
        }
        
        SqlConnection Sqlbaglanti = new SqlConnection(@"Data Source=DESKTOP-T54ECK5;Initial Catalog=DbTodoit;Integrated Security=True");

        protected void BtnLogin_Click(object sender, EventArgs e)
        {

            // Veri tabanı bağlantısını açıyoruz.
            Sqlbaglanti.Open();

            SqlCommand komut = new SqlCommand("Select * from tbl_users where username=@Username AND password=@Password", Sqlbaglanti);

            komut.Parameters.AddWithValue("@Username", TxtUsername.Text);
            komut.Parameters.AddWithValue("@Password", TxtPassword.Text);

            SqlDataReader dr = komut.ExecuteReader();

            if (dr.Read())
            {
                Session["admin"] = TxtUsername.Text;
                //Response.Redirect("UsersList.aspx");
                Response.Redirect("Home.aspx");
            }
            else
            {
                LblWarning.Visible = true;
            }

            dr.Close(); // SqlDataReader nesnesini kapat

            Sqlbaglanti.Close();



        }
    }
}