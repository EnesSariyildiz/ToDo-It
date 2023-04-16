using System;
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
            LblWarning.Visible = false;
        }

        protected void BtnMessageSend_Click(object sender, EventArgs e)
        {
            if ((string.IsNullOrEmpty(TxtMessageUsername.Text) || string.IsNullOrEmpty(TxtMessage.Text)))
            {
                LblWarning.Visible = true;
            }
            else
            {
                DataSet1TableAdapters.tbl_admin_messageTableAdapter dt = new DataSet1TableAdapters.tbl_admin_messageTableAdapter();
                dt.InsertAdminMessage(TxtMessageUsername.Text, TxtMessage.Text);
                Response.Redirect("Contact.aspx");

            }
           
        }
    }
}