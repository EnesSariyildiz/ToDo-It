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

            // Users database sorgu
            SqlCommand usersKomut = new SqlCommand("Select * from tbl_users where username=@Username AND password=@Password", Sqlbaglanti);


            // Admin database sorgu
            SqlCommand adminKomut = new SqlCommand("Select * from tbl_admin_users where username=@Username AND password=@Password", Sqlbaglanti);

            usersKomut.Parameters.AddWithValue("@Username", TxtUsername.Text);
            usersKomut.Parameters.AddWithValue("@Password", TxtPassword.Text);

            adminKomut.Parameters.AddWithValue("@Username", TxtUsername.Text);
            adminKomut.Parameters.AddWithValue("@Password", TxtPassword.Text);

            SqlDataReader dr = usersKomut.ExecuteReader();




            if (TxtUsername.Text == "admin" && TxtPassword.Text == "1111")
            {
                Session["superadmin"] = TxtUsername.Text;
                Response.Redirect("Admin.aspx");
            }

            if (dr.Read())
            {

                Session["admin"] = TxtUsername.Text;
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