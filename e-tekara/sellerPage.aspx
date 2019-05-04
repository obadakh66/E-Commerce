<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sellerPage.aspx.cs" Inherits="e_tekara.sellerPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
   <title>electro</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="CSS/footer.css" rel="stylesheet" />
        <style>


                        
                                




        ul 
  {
      text-decoration-style:none;
      margin:0px;
      padding:0px;
      list-style:none;
                 
  }

 ul li ul li
 {
      font-family:Arial;
      width:200px;
      background-color:#3c3d41;
      color:white ;             
      text-align:center;
      height:7%;
             

  }
        .lis:hover{color:black;}
ul li  {height:6%}
     
    </style>

    
    
    </head>
    
<body>


<nav class="navbar navbar-inverse" style="height:7%;background-color:#3c3d41;">
    <div class="navbar-header"  >
      <a class="navbar-brand" href="Default.aspx">ELECTRO</a>
    </div>
  <div class="container-fluid"  >
  <ul class="nav navbar-nav" >
      <li  ><a href="Default"><span class="glyphicon glyphicon-home"></span>Home</a></li>
      
      <li><a href="about.aspx"><span class="glyphicon glyphicon-info-sign"></span>About</a></li>
        <li><a href="contact.aspx"><span class="glyphicon glyphicon-phone"></span>Contact</a></li>
      <li><a href="customer_acc.aspx"><span class="glyphicon glyphicon-user"></span>My Account</a></li>
         <li><a href="login.aspx"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
    </ul>



 
      
  </div>


</nav>


 <div class="container">
  <form runat="server">

  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Your Own Products</a></li>
    <li><a data-toggle="tab" href="#menu1">Add Product</a></li>
     
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active" runat="server">
      <h3>Your Products</h3>
        
    </div>
    <div id="menu1" class="tab-pane fade">
        
      <h3>Add Product </h3>
      <div class="container" >
            <div class="form-group" style="width:60%">
           
           <div class="input-group mb-3">
            <div class="custom-file">
              <asp:FileUpload  class="custom-file-input" ID="imageUploader" runat="server"/>
              <label class="custom-file-label" for="imageUploader">Choose file</label>
            </div>
        </div>   
      </div>
<div class="form-group" style="width:60%">
     <label  for="exampleFormControlSelect1">Price </label>&nbsp;
   <div class="input-group"> 
       
        <span class="input-group-addon">$</span>
        <asp:TextBox runat="server" ID="p_price" class="form-control currency"  />
    </div>
  </div>
  
  <div class="form-group" style="width:60%">
    <label  for="exampleFormControlSelect1">Product Name </label>&nbsp;
     <Asp:TextBox type="text" class="form-control" id="p_name" runat="server"/>
    
  </div>
            <div class="form-group" style="width:60%">
    <label for="exampleFormControlSelect1">Product category </label>&nbsp;
   <asp:DropDownList ID="p_category" runat="server" class="form-control">
            <asp:ListItem>Laptop</asp:ListItem>
            <asp:ListItem>TV</asp:ListItem>
            <asp:ListItem>Microwave</asp:ListItem>
            <asp:ListItem>Mobile Phone</asp:ListItem>
        </asp:DropDownList>
  </div>
  
  <div class="form-group" style="width:60%">
    <label for="exampleFormControlSelect2">Product Description </label>
   <textarea type="text" class="form-control" id="p_desc" runat="server" rows="5"/>
  </div>

        
           
 
<asp:Button ID="add_product_btn" runat="server" Text="Add Item" class="btn btn-primary" style="width:60%" OnClick="add_product_btn_Click1" />
    </div>
           
    </div>
    
  </div>
      </form>
</div>
    
    <div  style="width:100%;left:0px;bottom:0px;height:auto;margin-top:5ex">
   
    <!----------- Footer ------------>
    <footer class="footer-bs" >
        <div class="row">
        	<div class="col-md-3 footer-brand animated fadeInLeft">
            	<h2>ELECTRO</h2>
                <p>E-commerce Website </p>
                
            </div>
        	
        	<div class="col-md-2 footer-social animated fadeInDown">
            	<h4>Follow Us</h4>
            	<ul>
                	<li><a href="#">Facebook</a></li>
                	<li><a href="#">Twitter</a></li>
                	<li><a href="#">Instagram</a></li>
                	
                </ul>
            </div>
            <div class="col-md-4 footer-nav animated fadeInUp">
            	<h4>Menu —</h4>
            	<div class="col-md-6">
                   <ul class="list">
                     <li><a href="about.aspx">About Us</a></li>
                        <li><a href="contact.aspx">Contacts</a></li>
                     
                    </ul>  
                </div>
            	
            </div>
        	<div class="col-md-3 footer-ns animated fadeInRight">
            	<h4>Copyright</h4>
               <p>© 2018 Electro Team, All rights reserved</p>
               
            </div>
        </div>
    </footer>
   

</div>
    </body>
</html>