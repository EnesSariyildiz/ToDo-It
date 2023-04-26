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
            LoadAdmin();
        }

        public void LoadAdmin()
        {
            Response.Write(@Session["superadmin"]);

            LblWarning.Visible = false;

            DataSet1TableAdapters.tbl_usersTableAdapter dt = new DataSet1TableAdapters.tbl_usersTableAdapter();
            dt.GetUsers();

            Repeater1.DataSource = dt.GetUsers();
            Repeater1.DataBind();

            //Yeni nesne olusturuldu.
            DataSet1TableAdapters.tbl_admin_messageTableAdapter adminDt = new DataSet1TableAdapters.tbl_admin_messageTableAdapter();

            adminDt.GetAdminMessage();

            Repeater2.DataSource = adminDt.GetAdminMessage();
            Repeater2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(TxtAdminUsername.Text) || string.IsNullOrEmpty(TxtAdminEmail.Text) || string.IsNullOrEmpty(TxtAdminPassword.Text))
            {
                // TextBox'ların boş olup olmadığını kontrol ediyor. Boş ise uyarı yazısı ekliyoruz.
                LblWarning.Visible = true;
            }

            else
            {
                // Boş değilse veri tabanına kullanıcıyı ekleme yapıyoruz.
                DataSet1TableAdapters.tbl_usersTableAdapter dt = new DataSet1TableAdapters.tbl_usersTableAdapter();

                dt.InsertUsers(TxtAdminUsername.Text, TxtAdminEmail.Text, TxtAdminPassword.Text);
                Response.Redirect("Admin.aspx");
            }

        }

        protected void txtClear_Click(object sender, EventArgs e)
        {
            TxtClear();
        }

        private void TxtClear()
        {
            TxtAdminUsername.Text = " ";
            TxtAdminPassword.Text = " ";
            TxtAdminEmail.Text = " ";
        }
    }
}