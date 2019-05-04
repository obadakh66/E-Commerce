using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace e_tekara
{
    public class functions:System.Web.UI.Page
    {

        public int login(customer user)
        {

            electroDBEntities db = new electroDBEntities();
            var myUser = db.customers.FirstOrDefault(u => u.username == user.username && u.pass == user.pass);
            var user2 = from u in db.customers
                        where u.username == user.username
                        select u;
            var user3 = user2.FirstOrDefault<customer>();
            if (myUser != null && myUser.is_seller == false)    //User was found
            {

                string name = user.username; ;
                Session["name"] = name;
                string userName = name;
                Session["userName"] = userName;
                string full_name = user3.f_name + "  " + user3.l_name;
                Session["full_name"] = full_name;
                Session["userID"] = user3.cust_ID;
                Session["edit_user"] = user3;
                return 1;
            }
            else if (myUser != null && myUser.is_seller == true)   //User was not found
            {
                string name = user.username; ;
                Session["name"] = name;
                string userName = name;
                Session["userName"] = userName;
                string full_name = user3.f_name + "  " + user3.l_name;
                Session["full_name"] = full_name;
                Session["userID"] = user3.cust_ID;
                Session["edit_user"] = user3;
                return 2;
            }
            else { return 0; }



        }

        public void call_products(HtmlGenericControl p_box)
        {
            if (p_box.Controls.Count == 0)
            {
                electroDBEntities db = new electroDBEntities();
            var products = db.products;
            foreach (var product in products)
            {

                if (product.is_solled == false || product.is_solled == null)
                {
                    

                        HtmlGenericControl colSm = new HtmlGenericControl("div");
                        colSm.Attributes["class"] = "col-sm-3";

                        HtmlGenericControl figure = new HtmlGenericControl("figure");
                        figure.Attributes["class"] = "card card-product";

                        HtmlGenericControl wrap = new HtmlGenericControl("div");
                        wrap.Attributes["class"] = "img-wrap";

                        HtmlGenericControl image = new HtmlGenericControl("img");
                        image.Style.Add(HtmlTextWriterStyle.Width, "250px");
                        image.Style.Add(HtmlTextWriterStyle.Height, "200px");
                        image.Attributes["src"] = itemImage_retrive(product.p_ID);

                        HtmlGenericControl fig = new HtmlGenericControl("figcaption");
                        fig.Attributes["class"] = "info-wrap";

                        HtmlGenericControl h4 = new HtmlGenericControl("h4");
                        h4.Attributes["class"] = "title";
                        h4.InnerText = product.p_name;





                        HtmlGenericControl h3 = new HtmlGenericControl("h3");
                        h3.Attributes["class"] = "title";
                        h3.InnerText = product.p_cat;

                        HtmlGenericControl p = new HtmlGenericControl("p");
                        p.Attributes["class"] = "desc";
                        p.InnerText = product.p_desc;

                        HtmlGenericControl bottomWrap = new HtmlGenericControl("div");
                        bottomWrap.Attributes["class"] = "bottom-wrap";

                        Button orderBtn = new Button();
                        orderBtn.ID = product.p_ID.ToString();
                        orderBtn.CssClass = "btn btn-info btn-sm float-right";
                        orderBtn.Text = "Order Now";
                        orderBtn.Click += delegate (object sender, EventArgs e) { orderBtn_Click(sender, e); };

                        LinkButton h5 = new LinkButton();
                        h5.ID = product.seller_ID.ToString() + "=" + product.p_ID.ToString();
                        h5.CssClass = "title";
                        h5.Text = "Posted By: " + product.customer.username;
                        h5.Click += delegate (object sender, EventArgs e) { username_btn_Click(sender, e); };

                        HtmlGenericControl bottom = new HtmlGenericControl("div");
                        bottom.Attributes["class"] = "price-wrap h5";
                        bottom.InnerText = product.p_price.ToString() + "$";


                        wrap.Controls.Add(image);
                        figure.Controls.Add(wrap);
                        fig.Controls.Add(h5);
                        fig.Controls.Add(h4);
                        fig.Controls.Add(h3);
                        fig.Controls.Add(p);
                        figure.Controls.Add(fig);

                        bottomWrap.Controls.Add(bottom);
                        bottomWrap.Controls.Add(orderBtn);
                        figure.Controls.Add(bottomWrap);


                        colSm.Controls.Add(figure);
                        p_box.Controls.Add(colSm);
                    }
                }
            }
        }

        public void call_microwaves(HtmlGenericControl p_box)
        {


            electroDBEntities db = new electroDBEntities();
            var products = db.products;
            foreach (var product in products)
            {
                if (product.p_cat=="Microwave" && product.is_solled==false)
                {

                    HtmlGenericControl colSm = new HtmlGenericControl("div");
                    colSm.Attributes["class"] = "col-sm-3";

                    HtmlGenericControl figure = new HtmlGenericControl("figure");
                    figure.Attributes["class"] = "card card-product";

                    HtmlGenericControl wrap = new HtmlGenericControl("div");
                    wrap.Attributes["class"] = "img-wrap";

                    HtmlGenericControl image = new HtmlGenericControl("img");
                    image.Style.Add(HtmlTextWriterStyle.Width, "70%");
                    image.Style.Add(HtmlTextWriterStyle.Height, "40%");
                    image.Attributes["src"] = itemImage_retrive(product.p_ID);

                    HtmlGenericControl fig = new HtmlGenericControl("figcaption");
                    fig.Attributes["class"] = "info-wrap";

                    HtmlGenericControl h4 = new HtmlGenericControl("h4");
                    h4.Attributes["class"] = "title";
                    h4.InnerText = product.p_name;

                    

                    HtmlGenericControl h3 = new HtmlGenericControl("h3");
                    h3.Attributes["class"] = "title";
                    h3.InnerText = product.p_cat;

                    HtmlGenericControl p = new HtmlGenericControl("p");
                    p.Attributes["class"] = "desc";
                    p.InnerText = product.p_desc;

                    HtmlGenericControl bottomWrap = new HtmlGenericControl("div");
                    bottomWrap.Attributes["class"] = "bottom-wrap";

                    Button orderBtn = new Button();
                    orderBtn.ID = product.p_ID.ToString();
                    orderBtn.CssClass = "btn btn-info btn-sm float-right";
                    orderBtn.Text = "Order Now";
                    orderBtn.Click += delegate (object sender, EventArgs e) { orderBtn_Click(sender, e); };

                    LinkButton h5 = new LinkButton();
                    h5.ID = product.seller_ID.ToString() + "=" + product.p_ID.ToString();
                    h5.CssClass = "title";
                    h5.Text = "Posted By: " + product.customer.username;
                    h5.Click += delegate (object sender, EventArgs e) { username_btn_Click(sender, e); };

                    HtmlGenericControl bottom = new HtmlGenericControl("div");
                    bottom.Attributes["class"] = "price-wrap h5";
                    bottom.InnerText = product.p_price.ToString()+"$";


                    wrap.Controls.Add(image);
                    figure.Controls.Add(wrap);
                    fig.Controls.Add(h5);
                    fig.Controls.Add(h4);
                    fig.Controls.Add(h3);
                    fig.Controls.Add(p);
                    figure.Controls.Add(fig);

                    bottomWrap.Controls.Add(bottom);
                    bottomWrap.Controls.Add(orderBtn);
                    figure.Controls.Add(bottomWrap);


                    colSm.Controls.Add(figure);
                    p_box.Controls.Add(colSm);
                }
            }
        }

        public void call_laptops(HtmlGenericControl p_box)
        {


            electroDBEntities db = new electroDBEntities();
            var products = db.products;
            foreach (var product in products)
            {
                if (product.p_cat == "Laptop" && product.is_solled == false)
                {

                    HtmlGenericControl colSm = new HtmlGenericControl("div");
                    colSm.Attributes["class"] = "col-sm-3";

                    HtmlGenericControl figure = new HtmlGenericControl("figure");
                    figure.Attributes["class"] = "card card-product";

                    HtmlGenericControl wrap = new HtmlGenericControl("div");
                    wrap.Attributes["class"] = "img-wrap";

                    HtmlGenericControl image = new HtmlGenericControl("img");
                    image.Style.Add(HtmlTextWriterStyle.Width, "70%");
                    image.Style.Add(HtmlTextWriterStyle.Height, "40%");
                    image.Attributes["src"] = itemImage_retrive(product.p_ID);

                    HtmlGenericControl fig = new HtmlGenericControl("figcaption");
                    fig.Attributes["class"] = "info-wrap";

                    HtmlGenericControl h4 = new HtmlGenericControl("h4");
                    h4.Attributes["class"] = "title";
                    h4.InnerText = product.p_name;

                    

                    HtmlGenericControl h3 = new HtmlGenericControl("h3");
                    h3.Attributes["class"] = "title";
                    h3.InnerText = product.p_cat;

                    HtmlGenericControl p = new HtmlGenericControl("p");
                    p.Attributes["class"] = "desc";
                    p.InnerText = product.p_desc;

                    HtmlGenericControl bottomWrap = new HtmlGenericControl("div");
                    bottomWrap.Attributes["class"] = "bottom-wrap";

                    Button orderBtn = new Button();
                    orderBtn.ID = product.p_ID.ToString();
                    orderBtn.CssClass = "btn btn-info btn-sm float-right";
                    orderBtn.Text = "Order Now";
                    orderBtn.Click += delegate (object sender, EventArgs e) { orderBtn_Click(sender, e); };

                    LinkButton h5 = new LinkButton();
                    h5.ID = product.seller_ID.ToString() + "=" + product.p_ID.ToString();
                    h5.CssClass = "title";
                    h5.Text = "Posted By: " + product.customer.username;
                    h5.Click += delegate (object sender, EventArgs e) { username_btn_Click(sender, e); };

                    HtmlGenericControl bottom = new HtmlGenericControl("div");
                    bottom.Attributes["class"] = "price-wrap h5";
                    bottom.InnerText = product.p_price.ToString() + "$";


                    wrap.Controls.Add(image);
                    figure.Controls.Add(wrap);
                    fig.Controls.Add(h5);
                    fig.Controls.Add(h4);
                    fig.Controls.Add(h3);
                    fig.Controls.Add(p);
                    figure.Controls.Add(fig);

                    bottomWrap.Controls.Add(bottom);
                    bottomWrap.Controls.Add(orderBtn);
                    figure.Controls.Add(bottomWrap);


                    colSm.Controls.Add(figure);
                    p_box.Controls.Add(colSm);
                }
            }
        }

        public void call_tvs(HtmlGenericControl p_box)
        {


            electroDBEntities db = new electroDBEntities();
            var products = db.products;
            foreach (var product in products)
            {
                if (product.p_cat == "TV" && product.is_solled == false)
                {

                    HtmlGenericControl colSm = new HtmlGenericControl("div");
                    colSm.Attributes["class"] = "col-sm-3";

                    HtmlGenericControl figure = new HtmlGenericControl("figure");
                    figure.Attributes["class"] = "card card-product";

                    HtmlGenericControl wrap = new HtmlGenericControl("div");
                    wrap.Attributes["class"] = "img-wrap";

                    HtmlGenericControl image = new HtmlGenericControl("img");
                    image.Style.Add(HtmlTextWriterStyle.Width, "70%");
                    image.Style.Add(HtmlTextWriterStyle.Height, "40%");
                    image.Attributes["src"] = itemImage_retrive(product.p_ID);

                    HtmlGenericControl fig = new HtmlGenericControl("figcaption");
                    fig.Attributes["class"] = "info-wrap";

                    HtmlGenericControl h4 = new HtmlGenericControl("h4");
                    h4.Attributes["class"] = "title";
                    h4.InnerText = product.p_name;

                    

                    HtmlGenericControl h3 = new HtmlGenericControl("h3");
                    h3.Attributes["class"] = "title";
                    h3.InnerText = product.p_cat;

                    HtmlGenericControl p = new HtmlGenericControl("p");
                    p.Attributes["class"] = "desc";
                    p.InnerText = product.p_desc;

                    HtmlGenericControl bottomWrap = new HtmlGenericControl("div");
                    bottomWrap.Attributes["class"] = "bottom-wrap";

                    Button orderBtn = new Button();
                    orderBtn.ID = product.p_ID.ToString();
                    orderBtn.CssClass = "btn btn-info btn-sm float-right";
                    orderBtn.Text = "Order Now";
                    orderBtn.Click += delegate (object sender, EventArgs e) { orderBtn_Click(sender, e); };

                    LinkButton h5 = new LinkButton();
                    h5.ID = product.seller_ID.ToString() + "=" + product.p_ID.ToString();
                    h5.CssClass = "title";
                    h5.Text = "Posted By: " + product.customer.username;
                    h5.Click += delegate (object sender, EventArgs e) { username_btn_Click(sender, e); };

                    HtmlGenericControl bottom = new HtmlGenericControl("div");
                    bottom.Attributes["class"] = "price-wrap h5";
                    bottom.InnerText = product.p_price.ToString() + "$";


                    wrap.Controls.Add(image);
                    figure.Controls.Add(wrap);
                    fig.Controls.Add(h5);
                    fig.Controls.Add(h4);
                    fig.Controls.Add(h3);
                    fig.Controls.Add(p);
                    figure.Controls.Add(fig);

                    bottomWrap.Controls.Add(bottom);
                    bottomWrap.Controls.Add(orderBtn);
                    figure.Controls.Add(bottomWrap);


                    colSm.Controls.Add(figure);
                    p_box.Controls.Add(colSm);
                }
            }
        }

        public void call_mobiles(HtmlGenericControl p_box)
        {


            electroDBEntities db = new electroDBEntities();
            var products = db.products;
            foreach (var product in products)
            {
                if (product.p_cat == "Mobile Phone" && product.is_solled == false)
                {

                    HtmlGenericControl colSm = new HtmlGenericControl("div");
                    colSm.Attributes["class"] = "col-sm-3";

                    HtmlGenericControl figure = new HtmlGenericControl("figure");
                    figure.Attributes["class"] = "card card-product";

                    HtmlGenericControl wrap = new HtmlGenericControl("div");
                    wrap.Attributes["class"] = "img-wrap";

                    HtmlGenericControl image = new HtmlGenericControl("img");
                    image.Style.Add(HtmlTextWriterStyle.Width, "70%");
                    image.Style.Add(HtmlTextWriterStyle.Height, "40%");
                    image.Attributes["src"] = itemImage_retrive(product.p_ID);

                    HtmlGenericControl fig = new HtmlGenericControl("figcaption");
                    fig.Attributes["class"] = "info-wrap";

                    HtmlGenericControl h4 = new HtmlGenericControl("h4");
                    h4.Attributes["class"] = "title";
                    h4.InnerText = product.p_name;

                   

                    HtmlGenericControl h3 = new HtmlGenericControl("h3");
                    h3.Attributes["class"] = "title";
                    h3.InnerText = product.p_cat;

                    HtmlGenericControl p = new HtmlGenericControl("p");
                    p.Attributes["class"] = "desc";
                    p.InnerText = product.p_desc;

                    HtmlGenericControl bottomWrap = new HtmlGenericControl("div");
                    bottomWrap.Attributes["class"] = "bottom-wrap";

                    Button orderBtn = new Button();
                    orderBtn.ID = product.p_ID.ToString();
                    orderBtn.CssClass = "btn btn-info btn-sm float-right";
                    orderBtn.Text = "Order Now";
                    orderBtn.Click += delegate (object sender, EventArgs e) { orderBtn_Click(sender, e); };

                    LinkButton h5 = new LinkButton();
                    h5.ID = product.seller_ID.ToString() + "=" + product.p_ID.ToString();
                    h5.CssClass = "title";
                    h5.Text = "Posted By: " + product.customer.username;
                    h5.Click += delegate (object sender, EventArgs e) { username_btn_Click(sender, e); };

                    HtmlGenericControl bottom = new HtmlGenericControl("div");
                    bottom.Attributes["class"] = "price-wrap h5";
                    bottom.InnerText = product.p_price.ToString() + "$";


                    wrap.Controls.Add(image);
                    figure.Controls.Add(wrap);
                    fig.Controls.Add(h5);
                    fig.Controls.Add(h4);
                    fig.Controls.Add(h3);
                    fig.Controls.Add(p);
                    figure.Controls.Add(fig);

                    bottomWrap.Controls.Add(bottom);
                    bottomWrap.Controls.Add(orderBtn);
                    figure.Controls.Add(bottomWrap);


                    colSm.Controls.Add(figure);
                    p_box.Controls.Add(colSm);
                }
            }
        }

        public void call_seller_products(HtmlGenericControl p_box)
        {


            electroDBEntities db = new electroDBEntities();
            var products = db.products;
            foreach (var product in products)
            {
                int id = Convert.ToInt16(Session["userID"].ToString());
                if (product.seller_ID ==id)
                {

                    HtmlGenericControl colSm = new HtmlGenericControl("div");
                    colSm.Attributes["class"] = "col-sm-3";

                    HtmlGenericControl figure = new HtmlGenericControl("figure");
                    figure.Attributes["class"] = "card card-product";

                    HtmlGenericControl wrap = new HtmlGenericControl("div");
                    wrap.Attributes["class"] = "img-wrap";

                    HtmlGenericControl image = new HtmlGenericControl("img");
                    image.Style.Add(HtmlTextWriterStyle.Width, "70%");
                    image.Style.Add(HtmlTextWriterStyle.Height, "40%");
                    image.Attributes["src"] = itemImage_retrive(product.p_ID);

                    HtmlGenericControl fig = new HtmlGenericControl("figcaption");
                    fig.Attributes["class"] = "info-wrap";

                    HtmlGenericControl h4 = new HtmlGenericControl("h4");
                    h4.Attributes["class"] = "title";
                    h4.InnerText = product.p_name;

                    HtmlGenericControl h5 = new HtmlGenericControl("h5");
                    h5.Attributes["class"] = "title";
                    h5.InnerText = "Posted By: " + product.customer.username;

                    HtmlGenericControl h3 = new HtmlGenericControl("h3");
                    h3.Attributes["class"] = "title";
                    h3.InnerText = product.p_cat;

                    HtmlGenericControl p = new HtmlGenericControl("p");
                    p.Attributes["class"] = "desc";
                    p.InnerText = product.p_desc;

                    HtmlGenericControl bottomWrap = new HtmlGenericControl("div");
                    bottomWrap.Attributes["class"] = "bottom-wrap";

                    Button orderBtn = new Button();
                    orderBtn.ID = product.p_ID.ToString();
                    orderBtn.CssClass = "btn btn - sm btn - primary float-right";
                    orderBtn.Text = "Order Now";

                    HtmlGenericControl bottom = new HtmlGenericControl("div");
                    bottom.Attributes["class"] = "price-wrap h5";
                    bottom.InnerText = product.p_price.ToString() + "$";

                    HtmlGenericControl status = new HtmlGenericControl("div");
                    status.Attributes["class"] = "price-wrap h5";
                    

                    if (product.is_solled == true)
                    {
                        status.Style.Add(HtmlTextWriterStyle.Color, "red");
                        status.InnerText =  "Solled";
                    }
                    if (product.is_solled == false)
                    {
                        status.Style.Add(HtmlTextWriterStyle.Color, "blue");
                        status.InnerText = "Available";
                    }
                    


                    wrap.Controls.Add(image);
                    figure.Controls.Add(wrap);
                    fig.Controls.Add(h5);
                    fig.Controls.Add(h4);
                    fig.Controls.Add(h3);
                    fig.Controls.Add(p);
                    figure.Controls.Add(fig);

                    bottomWrap.Controls.Add(bottom);
                    bottomWrap.Controls.Add(status);
                   // bottomWrap.Controls.Add(orderBtn);
                    figure.Controls.Add(bottomWrap);


                    colSm.Controls.Add(figure);
                    p_box.Controls.Add(colSm);
                }
            }
        }

        public bool search_product(HtmlGenericControl p_box,TextBox search_box)
        {

            p_box.Controls.Clear();

            electroDBEntities db = new electroDBEntities();
            var products = db.products;
            foreach (var product in products)
            {
                if ((search_box.Text!=null)&&(search_box.Text.Contains(product.p_name)|| search_box.Text.Contains(product.p_cat)))
                {

                    HtmlGenericControl colSm = new HtmlGenericControl("div");
                    colSm.Attributes["class"] = "col-sm-3";

                    HtmlGenericControl figure = new HtmlGenericControl("figure");
                    figure.Attributes["class"] = "card card-product";

                    HtmlGenericControl wrap = new HtmlGenericControl("div");
                    wrap.Attributes["class"] = "img-wrap";

                    HtmlGenericControl image = new HtmlGenericControl("img");
                    image.Style.Add(HtmlTextWriterStyle.Width, "70%");
                    image.Style.Add(HtmlTextWriterStyle.Height, "40%");
                    image.Attributes["src"] = itemImage_retrive(product.p_ID);

                    HtmlGenericControl fig = new HtmlGenericControl("figcaption");
                    fig.Attributes["class"] = "info-wrap";

                    HtmlGenericControl h4 = new HtmlGenericControl("h4");
                    h4.Attributes["class"] = "title";
                    h4.InnerText = product.p_name;

                    

                    HtmlGenericControl h3 = new HtmlGenericControl("h3");
                    h3.Attributes["class"] = "title";
                    h3.InnerText = product.p_cat;

                    HtmlGenericControl p = new HtmlGenericControl("p");
                    p.Attributes["class"] = "desc";
                    p.InnerText = product.p_desc;

                    HtmlGenericControl bottomWrap = new HtmlGenericControl("div");
                    bottomWrap.Attributes["class"] = "bottom-wrap";

                    Button orderBtn = new Button();
                    orderBtn.ID = product.p_ID.ToString();
                    orderBtn.CssClass = "btn btn-info btn-sm float-right";
                    orderBtn.Text = "Order Now";
                    orderBtn.Click += delegate (object sender, EventArgs e) { orderBtn_Click(sender, e); };

                    LinkButton h5 = new LinkButton();
                    h5.ID = product.seller_ID.ToString() + "=" + product.p_ID.ToString();
                    h5.CssClass = "title";
                    h5.Text = "Posted By: " + product.customer.username;
                    h5.Click += delegate (object sender, EventArgs e) { username_btn_Click(sender, e); };

                    HtmlGenericControl bottom = new HtmlGenericControl("div");
                    bottom.Attributes["class"] = "price-wrap h5";
                    bottom.InnerText = product.p_price.ToString() + "$";


                    wrap.Controls.Add(image);
                    figure.Controls.Add(wrap);
                    fig.Controls.Add(h5);
                    fig.Controls.Add(h4);
                    fig.Controls.Add(h3);
                    fig.Controls.Add(p);
                    figure.Controls.Add(fig);

                    bottomWrap.Controls.Add(bottom);
                    bottomWrap.Controls.Add(orderBtn);
                    figure.Controls.Add(bottomWrap);


                    colSm.Controls.Add(figure);
                    
                    p_box.Controls.Add(colSm);
                    
                }
            }
            return false;
        }

        public string itemImage_retrive(int itemid)
        {
            var myEntity = new electroDBEntities();

            var query = myEntity.products.Where(p => p.p_ID == itemid)
                           .Select(p => p.p_img).FirstOrDefault();

            if (query != null)
            {
                byte[] bytes = query;
                string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);



                return "data:image/png;base64," + base64String;

            }
            else
            {
                return "s20.jpg";
            }
        }
        public string image_retrive(int userid)
        {


            var myEntity = new electroDBEntities();

            var query = myEntity.customers.Where(p => p.cust_ID == userid)
                           .Select(p => p.cust_img).FirstOrDefault();

            if (query != null)
            {
                byte[] bytes = query;
                string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);



                return "data:image/png;base64," + base64String;

            }
            else
            {
                return "item_logo.png";
            }
        }
        protected void orderBtn_Click(object sender, EventArgs e)
        {

            Button button = (Button)sender;
            
            string buttonId = button.ID;
            electroDBEntities db = new electroDBEntities();
            int rating_id = Convert.ToInt16(buttonId);
            var review = from c in db.products where c.p_ID == rating_id select c;

            var userss = review.FirstOrDefault();
            Session["sellerID"] = userss.seller_ID;
            shipping_card shipping = new shipping_card();
            int buyerID = Convert.ToInt16(Session["buyerID"].ToString());
            int sellerID = Convert.ToInt16(Session["sellerID"].ToString());
            shipping.buyer_ID = buyerID;
            shipping.seller_ID = sellerID;
            shipping.p_ID = rating_id;
            shipping.is_approved = false;
            db.shipping_card.Add(shipping);
            db.SaveChanges();
            

        }
        protected void username_btn_Click(object sender, EventArgs e)
        {

            LinkButton button = (LinkButton)sender;
            string buttonId = button.ID;
            string ll = button.ID;
            int length = ll.IndexOf("=");
            
            electroDBEntities db = new electroDBEntities();
            int rating_id = Convert.ToInt16(button.ID.Substring(0, length));
            var review = from c in db.customers where c.cust_ID == rating_id select c;

            var userss = review.FirstOrDefault();
            Session["userID"] = userss.cust_ID;
            HttpContext.Current.Response.Redirect("customer_acc.aspx");

        }
    }
}