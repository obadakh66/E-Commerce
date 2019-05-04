using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_tekara
{
    public partial class customer_acc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int returnId = Convert.ToInt16(Session["userID"].ToString());

            // Entity object
            electroDBEntities db = new electroDBEntities();
            functions user_functions = new functions();
            var review = from c in db.customers where c.cust_ID == returnId select c;

            var userss = review.FirstOrDefault();
            
            if (userss.cust_img != null)
            {
                Image1.ImageUrl = user_functions.image_retrive(userss.cust_ID);
            }
            user_id_label.Text = userss.cust_ID.ToString();
            username_label.Text = userss.username;
            fullName_label.Text = userss.f_name + " " + userss.l_name;
            DB_label.Text = userss.b_date.ToLongDateString();
            email_label.Text = userss.gender;
            if (userss.is_seller == true) { customer_type.Text = "Seller"; }
            if (userss.is_seller == false) { customer_type.Text = "Buyer"; }





        }
    }
}