using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_tekara
{
    public partial class buyerPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["buyerID"] = Session["userID"].ToString();
            functions function = new functions();
            function.call_products(products_box);
        }

        protected void search_btn_Click(object sender, EventArgs e)
        {
            
            functions function = new functions();
            function.search_product(products_box,search_box);
        }
    }
}