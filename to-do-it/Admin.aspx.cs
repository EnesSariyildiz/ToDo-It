using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace to_do_it
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataSet1TableAdapters.tbl_usersTableAdapter dt = new DataSet1TableAdapters.tbl_usersTableAdapter();
            dt.GetUsers();
            Repeater1.DataSource = dt.GetUsers();
            Repeater1.DataBind();


            DataSet1TableAdapters.tbl_admin_usersTableAdapter adminDt = new DataSet1TableAdapters.tbl_admin_usersTableAdapter();
            adminDt.GetAdminUsers();
            Repeater2.DataSource = adminDt.GetAdminUsers();
            Repeater2.DataBind();
        }

        protected void BtnAdminAdd_Click(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tbl_admin_usersTableAdapter dt = new DataSet1TableAdapters.tbl_admin_usersTableAdapter();
            dt.InsertAdminUsers(TxtAdminUsername.Text, TxtAdminPassword.Text);
            Response.Redirect("Admin.aspx");
        }
    }
}