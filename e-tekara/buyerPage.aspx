<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buyerPage.aspx.cs" Inherits="e_tekara.buyerPage" %>

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


                                input[type=text] {
    width: 150px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.2s ease-in-out;
    transition: width 0.2s ease-in-out;
    
}
                                
input[type=text]:focus {
    width: 23%;
}



        ul{text-decoration-style:none;
            margin:0px;
            padding:0px;
            list-style:none;
            
        }

        ul li ul li{
              font-family:Arial;
              width:200px;
              background-color:lightblue;
              color:ActiveBorder ;
              margin:5px;
              text-align:center;
              height:7%;
             

        }
ul li  {height:6%}
     
    </style>

    
    
    </head>
    
<body>

    <form runat="server">
<nav class="navbar navbar-inverse" style="height:7%;background-color:#3c3d41;">
    <div class="navbar-header"  >
      <a class="navbar-brand" href="Default.aspx">ELECTRO</a>
    </div>
  <div class="container-fluid"  >
    <ul class="nav navbar-nav" >
      <li  ><a href="buyerPage.aspx"><span class="glyphicon glyphicon-home"></span>Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-list"></span>Catalouge</a>
       
          <ul class=" dropdown-menu primary " style=" position:absolute; top:50px; color:white" >
          <li class="lis"><a href="tv.aspx" style="color:white;">TV</a></li>
          <li class="lis"><a href="microwave.aspx" style="color:white;">Microwave</a></li>
          <li class="lis"><a href="laptop.aspx" style="color:white;">Laptop</a></li>
          <li class="lis"><a href="mobilePhones.aspx" style="color:white;">Mobile Phones</a></li>
        </ul>
      </li>
      <li><a href="about.aspx"><span class="glyphicon glyphicon-info-sign"></span>About</a></li>
        <li><a href="contact.aspx"><span class="glyphicon glyphicon-phone"></span>Contact</a></li>
        <li><a href="customer_acc.aspx"><span class="glyphicon glyphicon-user"></span>My Account</a></li>
      
         <li><a href="login.aspx"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
    </ul>

      
  <asp:TextBox ID="search_box" runat="server"  placeholder="Search.." />
          <asp:Button ID="search_btn" runat="server" Text="Search" CssClass="btn btn-info btn-lg" OnClick="search_btn_Click" />


 
        <a href="shippingCart.aspx" class="btn btn-info btn-lg" style="width:10%;height:90% ;position:absolute;left:87%;top:0%">
          <span class="glyphicon glyphicon-shopping-cart"></span>Cart
        </a>
  </div>


</nav>
   
 <div id="products_box" runat="server"></div>

</form>
    <div  style="width:100%;left:0px;bottom:0px;height:auto;z-index:2;position:fixed;">
   
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