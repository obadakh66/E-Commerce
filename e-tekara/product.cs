//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace e_tekara
{
    using System;
    using System.Collections.Generic;
    
    public partial class product
    {
        public int p_ID { get; set; }
        public string p_name { get; set; }
        public string p_cat { get; set; }
        public string p_desc { get; set; }
        public int p_price { get; set; }
        public byte[] p_img { get; set; }
        public int seller_ID { get; set; }
        public Nullable<bool> is_solled { get; set; }
    
        public virtual customer customer { get; set; }
    }
}
