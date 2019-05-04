<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mobileGuest.aspx.cs" Inherits="e_tekara.mobileGuest" %>

<!DOCTYPE html>

<html>
    <head>

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
    <h1>Mobile Phone</h1> 
    <p>A mobile phone is a wireless handheld device that allows users to make and receive calls and to send text messages,
        among other features. The earliest generation of mobile phones could only make and receive calls. Today’s mobile phones,
        however, are packed with many additional features, such as web browsers, games, cameras,
        video players and even navigational systems.
        </p>
      <p style="color:red">If You want to order anything you should login </p>
      </div>
 
     </div>
     
     
         
          
         

     </div>

    <div class="container">

<div class="row">
<div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="ho10.jpeg" style="width:70%; height:40%"/></div>
		<figcaption class="info-wrap">
				<h4 class="title">Honor 10</h4>
				<p class="desc">The Honor 10 flaunts a 5.84-inch IPS LCD display with a native screen resolution of 1,080 x 2,280 pixels
                    .</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
			
			<div class="price-wrap h5">
				<span class="price-new">$1280</span> <del class="price-old">$1980</del>
			</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
<div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="iv10.jpg" style="width:70%; height:40%"> </div>
		<figcaption class="info-wrap">
				<h4 class="title">IVOOMI I2</h4>
				<p class="desc">The iVooMi i2 is a nice smartphone which comes with a lot of strong features.
                    The smartphone has excellent cameras.
                    </p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				
				<div class="price-wrap h5">
					<span class="price-new">$1280</span> <del class="price-old">$1980</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
<div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="b3.jpg" style="width:70%; height:40%"></div>
		<figcaption class="info-wrap">
				<h4 class="title">VIVO NEX</h4>
				<p class="desc">Vivo NEX is powered by Octa core processor, clocked at 1.7 GHz speed and Adreno 616 GPU.
                    </p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				
				<div class="price-wrap h5">
					<span class="price-new">$1280</span> <del class="price-old">$1980</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->

    <div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="b4.jpg" style="width:70%; height:40%"></div>
		<figcaption class="info-wrap">
				<h4 class="title">Vivo Y53</h4>
				<p class="desc">Vivo Y53 ??? 8MP primary camera with ultra HD, normal, face beauty, videos, night, panorama, HDR, PPT.</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
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
		<div class="img-wrap"><img src="b9.jpg" style="width:70%; height:40%"></div>
		<figcaption class="info-wrap">
				<h4 class="title">Samsung Galaxy A9 (2018)</h4>
				<p class="desc">Released 2018, November
                 183g, 7.8mm thickness
                  Android 8.0
                     128GB storage, microSD card slot Delivery will start from 29th August 2018.</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
			
			<div class="price-wrap h5">
				<span class="price-new">$1280</span> <del class="price-old">$1980</del>
			</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
<div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="b10.jpg" style="width:70%; height:40%"> </div>
		<figcaption class="info-wrap">
				<h4 class="title">Y5 2017</h4>
				<p class="desc">Dimensions: 143.8 x 72 x 8.4 mm SIM: Dual SIM DISPLAY Type: IPS LCD capacitive touchscreen, 16M colorsSize: 5.0 inches </p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
			
				<div class="price-wrap h5">
					<span class="price-new">$1280</span> <del class="price-old">$1980</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
<div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="b7.jpg" style="width:70%; height:40%"></div>
		<figcaption class="info-wrap">
				<h4 class="title">SAMSUNG GALAXY S8</h4>
				<p class="desc">Technology	GSM / HSPA / LTE
                                   2G bands	GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)
                                    3G bands	HSDPA 850 / 900 / 1700(AWS) / 1900.
                                    

				</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				
				<div class="price-wrap h5">
					<span class="price-new">$1280</span> <del class="price-old">$1980</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->

    <div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="b8.jpg" style="width:70%; height:40%"></div>
		<figcaption class="info-wrap">
				<h4 class="title">Galaxy Note 9</h4>
				<p class="desc">Brand Warranty Delivery will start from 29th August 2018 6.4" Super AMOLED capacitive touchscreen 6GB RAM, 128GB ROM
8 MP Front</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
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





</div> 

       





     </form>






     </body>
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

</html>