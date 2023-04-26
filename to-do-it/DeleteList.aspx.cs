using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace to_do_it
{
    public partial class listeSilme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            deleteList();
        }
        
        public void deleteList()
        {
            int id = Convert.ToInt16(Request.QueryString["id"]);
            //ID'yi int32 formatına çeviriyor. ve diğe formda olan sorgu değerini buraya taşıyor.

            DataSet1TableAdapters.tbl_users_listTableAdapter dt = new DataSet1TableAdapters.tbl_users_listTableAdapter();
            dt.DeleteListQuery(Convert.ToInt16(id));

            Response.Redirect("UsersList.aspx");
        }
    }
}