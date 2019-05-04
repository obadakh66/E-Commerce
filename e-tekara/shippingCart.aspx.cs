using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace e_tekara
{
    public partial class shippingCart : System.Web.UI.Page
    {
        public int total_price = 0;
        public int tdtotal = 0;
        public static string textQ = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            electroDBEntities db = new electroDBEntities();
            functions fun = new functions();
            int buyerid = Convert.ToInt16(Session["userID"].ToString());
            var shippings = db.shipping_card;
            foreach (var shipping in shippings)
            {
                if (shipping.buyer_ID == buyerid)
                {
                    call_shippings(shipping.p_ID,shipping.ID);
                }
            }


                
         }
        public void call_shippings(int id,int shID)
        {
            
            electroDBEntities db = new electroDBEntities();
            functions fun = new functions();
            var products = db.products;
            foreach (var product in products)
            {
                if (product.p_ID == id)
                {
                    TextBox input = new TextBox();
                    
                    total_price += product.p_price;
                    TableRow tr = new TableRow();
                    TableCell th = new TableCell();


                    HtmlGenericControl row = new HtmlGenericControl("div");
                    row.Attributes["class"] = "row";

                    HtmlGenericControl colsm2 = new HtmlGenericControl("div");
                    colsm2.Attributes["class"] = "col-sm-2 hidden-xs";

                    HtmlGenericControl img = new HtmlGenericControl("img");
                    img.Style.Add(HtmlTextWriterStyle.Width, "100px");
                    img.Style.Add(HtmlTextWriterStyle.Height, "80px");
                    img.Attributes["class"] = "img-responsive";
                    img.Attributes["src"] = fun.itemImage_retrive(product.p_ID);

                    HtmlGenericControl colsm10 = new HtmlGenericControl("div");
                    colsm10.Attributes["class"] = "col-sm-10";

                    HtmlGenericControl h4 = new HtmlGenericControl("h4");
                    h4.Attributes["class"] = "nomargin";
                    h4.InnerText =  product.p_name;

                    HtmlGenericControl p = new HtmlGenericControl("p");
                    p.InnerText = product.p_desc;
                    //////////////////////////////////////////////////////
                    TableCell td = new TableCell();
                    td.Attributes["data-th"] = "Price";
                    td.Text = product.p_price.ToString();


                    TableCell td2 = new TableCell();
                    td2.Attributes["data-th"] = "Quantity";

                    
                    
                    
                    input.Attributes["class"] = "form-control text-center";


                    input.Text = textQ;
                    
                    TableCell td3 = new TableCell();
                    td3.Attributes["data-th"] = "Subtotal";
                    td3.Attributes["class"] = "text-center";
                    
                    TableCell td4 = new TableCell();
                    td4.Attributes["class"] = "actions";



                    LinkButton delete = new LinkButton();
                    delete.CssClass = "btn btn-danger btn-sm";
                    delete.ID =  shID.ToString()+ "=sh";
                    delete.Click += delegate (object sender, EventArgs e) { deleteBtn_Click(sender, e,shID); };

                    LinkButton refresh = new LinkButton();
                    refresh.CssClass = "btn btn-danger btn-sm";
                    refresh.ID = shID.ToString() + "=sh1";
                    refresh.Click += delegate (object sender, EventArgs e) { refreshBtn_Click(sender, e,input,td3,td); };

                    HtmlGenericControl i1 = new HtmlGenericControl("i");
                    i1.Attributes["class"] = "fa fa-refresh";

                    HtmlGenericControl i2 = new HtmlGenericControl("i");
                    i2.Attributes["class"] = "fa fa-trash-o";
                    th.Attributes["data-th"] = "Product";


                    colsm2.Controls.Add(img);

                    colsm10.Controls.Add(h4);
                    colsm10.Controls.Add(p);
                    td2.Controls.Add(input);

                    delete.Controls.Add(i2);
                    refresh.Controls.Add(i1);
                    td4.Controls.Add(refresh);
                    td4.Controls.Add(delete);
                    row.Controls.Add(colsm2);
                    row.Controls.Add(colsm10);
                    tr.Controls.Add(th);
                    tr.Controls.Add(td);
                    tr.Controls.Add(td2);
                    tr.Controls.Add(td3);
                    tr.Controls.Add(td4);
                    tr.ID = shID.ToString();
                    th.Controls.Add(row);
                    table_body.Controls.Add(tr);
                }
                
            }
           
        }
        protected void deleteBtn_Click(object sender, EventArgs e,int shid)
        {
            
            LinkButton button = (LinkButton)sender;
            string buttonId = button.ID;
            string ll = button.ID;
            int length = ll.IndexOf("=");

            electroDBEntities db = new electroDBEntities();
            int rating_id = Convert.ToInt16(button.ID.Substring(0, length));
            var review = from c in db.shipping_card where c.ID == rating_id select c;

            var userss = review.FirstOrDefault();
            db.shipping_card.Remove(userss);
            db.SaveChanges();
            HttpContext.Current.Response.Redirect("shippingCart.aspx");

        }
        protected void refreshBtn_Click(object sender, EventArgs e, TextBox text,TableCell cell,TableCell cell2)
        {
           
            int tdtext3=0;
            textQ = text.Text;
            if (textQ != "")
            {
                string quantity = text.Text;
                int tdtext1 = Convert.ToInt16(quantity);
                int tdtext2 = Convert.ToInt16(cell2.Text);
                tdtext3 = tdtext1 * tdtext2;
                cell.Text = tdtext3.ToString();
                tdtotal += total_price;
            }
            
            
        }
    }
}