using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_tekara
{
    public partial class signUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signup_btn_Click(object sender, EventArgs e)
        {
            ElectroDBEntities db = new ElectroDBEntities();
            customer newCust = new customer();
            newCust.f_name = f_name.Text;
            newCust.l_name = l_name.Text;
            newCust.gender = gender.SelectedItem.Text;
            if (cust_type.SelectedItem.Text == "Seller")
            {
                newCust.is_seller = true;
            }
            else
            {
                newCust.is_seller = false;
            }
            newCust.username = username.Text;
            newCust.pass = pass.Text;
            if (p_img.PostedFile != null)
            {


                byte[] bytes;
                using (BinaryReader br = new BinaryReader(p_img.PostedFile.InputStream))
                {
                    bytes = br.ReadBytes(p_img.PostedFile.ContentLength);
                }

                newCust.cust_img = bytes;

                db.customers.Add(newCust);
                db.SaveChanges();
                creation_alert.Attributes.Remove("hidden");
            }
        }
    }
}