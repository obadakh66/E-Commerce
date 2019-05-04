<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="microGuest.aspx.cs" Inherits="e_tekara.microGuest" %>

<html>
    <head>
        <title>Microwave</title>
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
     







 {
  box-sizing: border-box;
}



.columns {
    float: left;
    width: 20.3%;
    padding: 8px;
    height:20%
}

.price {
    list-style-type: none;
    border: 1px solid #eee;
    margin: 0;
    padding: 0;
    -webkit-transition: 0.3s;
    transition: 0.3s;
}

  .price:hover {
    box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2)
}
 
 .price .header {
    background-color:;
    color: white;
    font-size: 25px;
    height:20%;

}

  .price  li {
    border-bottom: 1px solid #eee;
    padding: 20px;
    text-align: center;
   height:20%;

    
}
  .product_div{width:25%;}

  .price .grey {
    background-color: #eee;
    font-size: 20px;
    height:20%
}

    </style>
 


    </head>
 <body>
<form runat="server">

  <nav class="navbar navbar-inverse" style="height:7%;background-color:#3c3d41;">
    <div class="container-fluid"  >
    <ul class="nav navbar-nav" >
      <li  ><a href="Default.aspx"><span class="glyphicon glyphicon-home"></span>Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-list"></span>Catalouge</a>
       
          <ul class=" dropdown-menu primary " style=" position:absolute; top:50px; color:white" >
          <li class="lis"><a href="tvGuest.aspx" style="color:white;">TV</a></li>
          <li class="lis"><a href="microGuest.aspx" style="color:white;">Microwave</a></li>
          <li class="lis"><a href="laptopGuest.aspx" style="color:white;">Laptop</a></li>
          <li class="lis"><a href="mobileGuest.aspx" style="color:white;">Mobile Phones</a></li>
        </ul>
      </li>
      <li><a href="about.aspx"><span class="glyphicon glyphicon-info-sign"></span>About</a></li>
        <li><a href="contact.aspx"><span class="glyphicon glyphicon-phone"></span>Contact</a></li>
      <li><a href="login.aspx"><span class="glyphicon glyphicon-user"></span>Login</a></li>
         <li><a href="signUp.aspx"><span class="glyphicon glyphicon-registration-mark"></span>Sign Up</a></li>
    </ul>



 
  </div>

 <div class="input-group"></span></div> 
</nav>



<br />

 <div class="container">
  <div class="jumbotron">
    <h1>Microwave</h1> 
    <p>Microwaves are known as heat-heated devices, which cause their particles to vibrate, causing them to collide,
        thereby warming and cooking. The 2450 MHz frequency is reserved for use exclusively in microwave ovens.
        </p>
      <p style="color:red">If You want to order anything you should login </p>
      </div>
 
     </div>
     
     
         
          
         

     </div>

    <div class="container">

<div class="row">
<div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="m11.jpg" style="width:70%; height:40%"></div>
		<figcaption class="info-wrap">
				<h4 class="title">microwave</h4>
				<p class="desc">20 litres interior capacity.
                                 Child safety lock.
                                  Size H25.8, W44.3, D34cm.
                                   Weight 12kg.</p>
				<div class="rating-wrap">
					<div class="label-rating">123 reviews</div>
					<div class="label-rating">159 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
			
			<div class="price-wrap h5">
				<span class="price-new">$500</span> <del class="price-old">$650</del>
			</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
<div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="m22.jpeg" style="width:70%; height:40%"> </div>
		<figcaption class="info-wrap">
				<h4 class="title">microwave</h4>
				<p class="desc">25 litres interior capacity.
                                 Child safety lock.
                                  Size H20.8, W50.3, D34cm.
                                   Weight 10kg.</p>
				<div class="rating-wrap">
					<div class="label-rating">147 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				
				<div class="price-wrap h5">
					<span class="price-new">$400</span> <del class="price-old">$500</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
<div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="m33.jpg" style="width:70%; height:40%"></div>
		<figcaption class="info-wrap">
				<h4 class="title">microwave</h4>
				<p class="desc">25 litres interior capacity.
                                 Child safety lock.
                                  Size H29.8, W47.3, D23cm.
                                   Weight 13kg.</p>
				<div class="rating-wrap">
					<div class="label-rating">137 reviews</div>
					<div class="label-rating">124 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				
				<div class="price-wrap h5">
					<span class="price-new">$450</span> <del class="price-old">$550</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->

    <div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="m44.jpg" style="width:70%; height:40%"></div>
		<figcaption class="info-wrap">
				<h4 class="title">microwave</h4>
				<p class="desc">15 litres interior capacity.
                                 Child safety lock.
                                  Size H21.8, W44.3, D24cm.
                                   Weight 19kg.</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">184 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				
				<div class="price-wrap h5">
					<span class="price-new">$1280</span> <del class="price-old">$1980</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->



</div> <!-- row.// -->






        
<div class="row">
<div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="m55.jpg" style="width:70%; height:40%"></div>
		<figcaption class="info-wrap">
				<h4 class="title">micowave</h4>
				<p class="desc">20 litres interior capacity.
                                 Child safety lock.
                                  Size H30.2, W44.3, D22cm.
                                   Weight 15kg.</p>
				<div class="rating-wrap">
					<div class="label-rating">141 reviews</div>
					<div class="label-rating">135 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
			
			<div class="price-wrap h5">
				<span class="price-new">$120</span> <del class="price-old">$180</del>
			</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
<div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="m66.jpg" style="width:70%; height:40%"> </div>
		<figcaption class="info-wrap">
				<h4 class="title">microwave</h4>
				<p class="desc">15 litres interior capacity.
                                 Child safety lock.
                                  Size H25.8, W44.3, D34cm.
                                   Weight 14kg.</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				
				<div class="price-wrap h5">
					<span class="price-new">$180</span> <del class="price-old">$195</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
<div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="m77.jpg" style="width:70%; height:40%"></div>
		<figcaption class="info-wrap">
				<h4 class="title">microwave</h4>
				<p class="desc">20 litres interior capacity.
                                 Child safety lock.
                                  Size H25.8, W44.3, D34cm.
                                   Weight 12kg.</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				
				<div class="price-wrap h5">
					<span class="price-new">$540</span> <del class="price-old">$600</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->

    <div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="m88.jpg" style="width:70%; height:40%"></div>
		<figcaption class="info-wrap">
				<h4 class="title">microwave</h4>
				<p class="desc">10 litres interior capacity.
                                 Child safety lock.
                                  Size H25.8, W22.3, D15cm.
                                   Weight 11kg.</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				
				<div class="price-wrap h5">
					<span class="price-new">$280</span> <del class="price-old">$380</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->



</div> <!-- row.// -->





</div> 

       





     </form>





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