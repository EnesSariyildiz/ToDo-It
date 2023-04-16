using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace to_do_it
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(@Session["admin"]);
        }

        protected void tryIt_Click(object sender, EventArgs e)
        {
            Response.Redirect("HowToUse.aspx");
        }

        protected void BtnMessageSend_Click(object sender, EventArgs e)
        {
           
        }
    }
}