using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace to_do_it
{
    public partial class MyList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Yeni nesne olusturuldu.
            DataSet1TableAdapters.Tbl_ListsTableAdapter dt = new DataSet1TableAdapters.Tbl_ListsTableAdapter();
            
            //dt.ListShow()'dan verileri aliyor.
            Repeater1.DataSource = dt.ListShow();

            //Verileri alıp goruntuluyor.
            Repeater1.DataBind();
        }
    }
}