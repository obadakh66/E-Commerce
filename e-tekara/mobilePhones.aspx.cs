﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_tekara
{
    public partial class mobilePhones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            functions functions = new functions();
            functions.call_mobiles(mobile_box);
        }
    }
}