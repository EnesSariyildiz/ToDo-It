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
            // Tüm sayfa doğrulama kontrollerinin geçerli olup olmadığını kontrol eder.
            if (Page.IsValid)
            {
                // Doğrulama başarılı, işlem yapabilirsiniz.
                // Örneğin, kullanıcının giriş bilgilerini doğrulayabilirsiniz.

                // Kullanıcı adı ve şifre kontrolü
                if (TxtUsername.Text == "admin" && TxtPassword.Text == "1234")
                {
                    // Doğrulama başarılı, kullanıcıyı ana sayfaya yönlendirin.
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    // Kullanıcı adı veya şifre yanlış
                    LblWarning.Visible = true;
                }
            }
            

        }
    }
}