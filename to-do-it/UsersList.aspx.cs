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

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadTasks();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            addList();
        }

        private void addList()
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