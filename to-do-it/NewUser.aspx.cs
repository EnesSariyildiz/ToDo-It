﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace to_do_it
{
    public partial class NewUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblWarning.Visible = false;
        }

        protected void BtnSignUp_Click(object sender, EventArgs e)
        {



            if (string.IsNullOrEmpty(TxtUsername.Text) || string.IsNullOrEmpty(TxtEmail.Text) || string.IsNullOrEmpty(TxtPassword.Text))
            {
                LblWarning.Visible = true;
            }
            else
            {
                // code to sign up the user
            }



            DataSet1TableAdapters.Tbl_UsersTableAdapter dt = new DataSet1TableAdapters.Tbl_UsersTableAdapter();
            dt.InsertUsers(TxtUsername.Text, TxtEmail.Text, TxtPassword.Text);
            Response.Redirect("NewUser.aspx");

        }
    }
}