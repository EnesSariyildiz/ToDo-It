using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace to_do_it
{
    public partial class AdminDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Request.QueryString["ID"]);
            //ID'yi int32 formatına çeviriyor. ve diğe formda olan sorgu değerini buraya taşıyor.

            DataSet1TableAdapters.tbl_admin_usersTableAdapter dt = new DataSet1TableAdapters.tbl_admin_usersTableAdapter();
            dt.DeleteAdmin(Convert.ToInt16(id));

            Response.Redirect("Admin.aspx");
        }
    }
}