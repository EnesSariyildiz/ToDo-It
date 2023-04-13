using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace to_do_it


{
    public partial class UsersList : System.Web.UI.Page
    {

        SqlConnection Sqlbaglanti = new SqlConnection(@"Data Source=DESKTOP-T54ECK5;Initial Catalog=DbTodoit;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

            Response.Write(@Session["admin"]);
            //Session["username"] = "kullanici_adi";
           

            // Veri tabanı bağlantısını açıyoruz.
            //Sqlbaglanti.Open();

            //SqlCommand komut = new SqlCommand("Select * from todolist_users where user_id=@Username", Sqlbaglanti);
            //DataSet1TableAdapters.todolist_usersTableAdapter dt = new DataSet1TableAdapters.todolist_usersTableAdapter();

            //Response.Redirect("MyList.aspx");

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            //DataSet1TableAdapters.Tbl_UsersListTableAdapter dt = new DataSet1TableAdapters.Tbl_UsersListTableAdapter();
            //dt.InsertUsersList(TextBox1.Text, TextBox2.Text, TextBox3.Text);
            //Response.Redirect("UsersList.aspx");
        }
    }
}