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

        //SqlConnection Sqlbaglanti = new SqlConnection(@"Data Source=DESKTOP-T54ECK5;Initial Catalog=DbTodoit;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            Response.Write(@Session["admin"]);
            LoadTasks();


        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tbl_users_listTableAdapter dt = new DataSet1TableAdapters.tbl_users_listTableAdapter();
            
            int userId = (int)Session["userId"];

            dt.InsertUserListQuery(userId, txtTitle.Text, txtDesc.Text);
            Response.Redirect("UsersList.aspx");
        }

        private void LoadTasks()
        {
            DataSet1TableAdapters.tbl_users_listTableAdapter dt = new DataSet1TableAdapters.tbl_users_listTableAdapter();

            int userId = (int)Session["userId"];

            var data = dt.GetUsersList(userId);
            Repeater1.DataSource = data;
            Repeater1.DataBind();

        }
    }
}