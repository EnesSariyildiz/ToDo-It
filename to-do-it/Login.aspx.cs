using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace to_do_it
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           LblWarning.Visible = false;
        }



        protected void BtnLogin_Click1(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TxtUsername.Text) ||  string.IsNullOrEmpty(TxtPassword.Text))
            {
                // TextBox'ların boş olup olmadığını kontrol ediyor. Boş ise uyarı yazısı ekliyoruz.
                LblWarning.Visible = true;
            }

            else
            {
               // Boş değil ise anasayfa sayfasına kullanıcıyı yönlendiriyoruz.
                Response.Redirect("Home.aspx");
            }


        }
    }
}