<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shippingCart.aspx.cs" Inherits="e_tekara.shippingCart" %>


<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
      <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" />

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="js/jquery-1.11.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/wow.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"/>
<link href="CSS/shippingStyles.css" rel="stylesheet" />
<link href="CSS/footer.css" rel="stylesheet" />
<!------ Include the above in your HEAD tag ---------->
</head>
<body>
  
    <form runat="server">
        <nav class="navbar navbar-inverse" style="height:7%;background-color:#3c3d41;">
    <div class="navbar-header"  >
      <a class="navbar-brand" href="Default.aspx">ELECTRO</a>
    </div>
  <div class="container-fluid"  >
    <ul class="nav navbar-nav" >
      <li  ><a href="buyerPage.aspx">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Catalouge</a>
       
          <ul class=" dropdown-menu primary " style=" position:absolute; top:50px; color:white" >
          <li class="lis"><a href="tv.aspx" style="color:white;">TV</a></li>
          <li class="lis"><a href="microwave.aspx" style="color:white;">Microwave</a></li>
          <li class="lis"><a href="laptop.aspx" style="color:white;">Laptop</a></li>
          <li class="lis"><a href="mobilePhones.aspx" style="color:white;">Mobile Phones</a></li>
        </ul>
      </li>
      <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
        <li><a href="customer_acc.aspx"><span class="glyphicon glyphicon-user"></span>My Account</a></li>
      
         <li><a href="signUp.aspx">Logout</a></li>
    </ul>

      
  

 
        <a href="shippingCart.aspx" class="btn btn-info btn-lg" style="width:10%;height:90% ;position:absolute;left:87%;top:0%">
          <span class="glyphicon glyphicon-shopping-cart"></span>Cart
        </a>
  </div>


</nav>
<div class="container">
	<table id="cart" class="table table-hover table-condensed">
    				<thead>
						<tr>
							<th style="width:50%">Product</th>
							<th style="width:10%">Price</th>
							<th style="width:8%">Quantity</th>
							<th style="width:22%" class="text-center">Subtotal</th>
							<th style="width:10%"></th>
						</tr>
					</thead>
					<tbody id="table_body" runat="server">
						
					</tbody>
					<tfoot>
						<tr class="visible-xs">
							<td class="text-center"><strong>Total 1.99</strong></td>
						</tr>
						<tr>
							<td><a href="buyerPage.aspx" style="background-color:#3c3d41;color:white" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td class="hidden-xs text-center"></td>
							
						</tr>
					</tfoot>
				</table>
</div>
        </form>
     <div  style="width:100%;left:0px;bottom:0px;height:auto;z-index:2;position:fixed">
   
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
