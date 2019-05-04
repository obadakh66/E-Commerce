using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_tekara
{
    public partial class sellerPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            functions functions = new functions();
            functions.call_seller_products(home);
        }

        protected void add_product_btn_Click(object sender, EventArgs e)
        {
            
        }

        public void add_product_btn_Click1(object sender, EventArgs e)
        {
            string userName = Session["userName"].ToString();
            int sID = Convert.ToInt16(Session["userID"].ToString());
            electroDBEntities db2 = new electroDBEntities();
            product newitem = new product();

            newitem.p_ID = 100;
            newitem.p_name = p_name.Text;
            newitem.p_cat = p_category.SelectedItem.Text;
            newitem.p_price = Convert.ToInt16(p_price.Text);
            newitem.seller_ID = sID;
            newitem.p_desc = p_desc.InnerText;
            newitem.is_solled = false;
            
            
            if (imageUploader.PostedFile != null)
            {


                byte[] bytes;
                using (BinaryReader br = new BinaryReader(imageUploader.PostedFile.InputStream))
                {
                    bytes = br.ReadBytes(imageUploader.PostedFile.ContentLength);
                }

                newitem.p_img = bytes;


            }

            if (newitem != null)
            {
                db2.products.Add(newitem);
                db2.SaveChanges();
                Response.Redirect("sellerPage.aspx");
            }
        }
    }
}