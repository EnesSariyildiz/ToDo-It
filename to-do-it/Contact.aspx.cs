﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace to_do_it
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnMessageSend_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.tbl_admin_messageTableAdapter dt = new DataSet1TableAdapters.tbl_admin_messageTableAdapter();
            dt.InsertAdminMessage(TxtMessageUsername.Text, TxtMessage.Text);
            Response.Redirect("Home.aspx");
        }
    }
}