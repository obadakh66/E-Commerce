using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_tekara
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void login_btn_Click(object sender, EventArgs e)
        {
            var myUser = new customer
            {
                username = user_name.Text,

                pass = pass.Text
            };

            functions login_fun = new functions();
            if (login_fun.login(myUser) == 0)
            {
                
                alert.Attributes.Remove("hidden");
            }
            else if (login_fun.login(myUser) == 1)
            {
                Response.Redirect("buyerPage.aspx");
            }
            else
            {
                Response.Redirect("sellerPage.aspx");
            }
        }
    }
}