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
            ////Yeni nesne olusturuldu.
            //DataSet1TableAdapters.Tbl_ListsTableAdapter dt = new DataSet1TableAdapters.Tbl_ListsTableAdapter();
            
            ////dt.ListShow()'dan verileri aliyor.
            //Repeater1.DataSource = dt.ListShow();

            ////Verileri alıp goruntuluyor.
            //Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //DataSet1TableAdapters.Tbl_ListsTableAdapter dt = new DataSet1TableAdapters.Tbl_ListsTableAdapter();
            //dt.InsertList(TextBox1.Text, TextBox2.Text);
            //Response.Redirect("MyList.aspx");      

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            
        }
    }
}