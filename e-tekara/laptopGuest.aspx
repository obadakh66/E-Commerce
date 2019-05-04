<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laptopGuest.aspx.cs" Inherits="e_tekara.laptopGuest" %>

<!DOCTYPE html>

<html>
    <head>
        <title>Laptop</title>
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
    <h1>Laptop</h1> 
    <p>A laptop, also called a notebook computer or simply a notebook,
        is a small, portable personal computer with a "clamshell" form factor, having, typically, a thin LCD or LED computer screen mounted on the inside of the upper
        </p>
       <p style="color:red">If You want to order anything you should login </p>
      </div>
 
     </div>
     
     
         
          
         

     </div>

    <div class="container">

<div class="row">

<div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="l2.jpg" style="width:70%; height:40%"> </div>
		<figcaption class="info-wrap">
				<h4 class="title">lenovo</h4>
				<p class="desc">Windows 10 Home 32
                                8th Generation Intel® Core™ i7 processor
                                 Intel® HD Graphics 420
                                  15 GB memory; 1 TB HDD
                                  13.7" diagonal HD+ display</p>
				<div class="rating-wrap">
					<div class="label-rating">254 reviews</div>
					<div class="label-rating">221 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				
				<div class="price-wrap h5">
					<span class="price-new">$800</span> <del class="price-old">$950</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
<div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="l22.jpeg" style="width:70%; height:40%"></div>
		<figcaption class="info-wrap">
				<h4 class="title">lenovo</h4>
				<p class="desc">Windows 8 Home 64
                                6th Generation Intel® Core™ i5 processor
                                 Intel® HD Graphics 720
                                  15 GB memory; 1 TB HDD
                                  20.3" diagonal HD+ display</p>
				<div class="rating-wrap">
					<div class="label-rating">80 reviews</div>
					<div class="label-rating">90 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				
				<div class="price-wrap h5">
					<span class="price-new">$1200</span> <del class="price-old">$1500</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->

    <div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="l88.jpg" style="width:70%; height:40%"></div>
		<figcaption class="info-wrap">
				<h4 class="title">Dell</h4>
				<p class="desc">Windows 7 Home 64
                                9th Generation Intel® Core™ i5 processor
                                 Intel® HD Graphics 520
                                  6 GB memory.
                                  10.7" diagonal HD+ display</p>
				<div class="rating-wrap">
					<div class="label-rating">132 reviews</div>
					<div class="label-rating">154 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				
				<div class="price-wrap h5">
					<span class="price-new">$1000</span> <del class="price-old">$1150</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->

    <div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="l11.jpg" style="width:70%; height:40%"></div>
		<figcaption class="info-wrap">
				<h4 class="title">Lenovo</h4>
				<p class="desc">Windows 10 Home 64
                                8th Generation Intel® Core™ i7 processor
                                 Intel® HD Graphics 520
                                  9 GB memory; 1 TB HDD</p>
				<div class="rating-wrap">
					<div class="label-rating">130 reviews</div>
					<div class="label-rating">140 orders </div>
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
		<div class="img-wrap"><img src="l77.jpg" style="width:70%; height:40%"/></div>
		<figcaption class="info-wrap">
				<h4 class="title">Dell inspirion 17 7000 series</h4>
				<p class="desc">Windows 8 Home 64
                                8th Generation Intel® Core™ i7 processor
                                 Intel® HD Graphics 420
                                  16 GB memory; 1 TB HDD
                                  15.3" diagonal HD+ display</p>
				<div class="rating-wrap">
					<div class="label-rating">90 reviews</div>
					<div class="label-rating">100 orders </div>
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
		<div class="img-wrap"><img src="l44.png" style="width:70%; height:40%"></div>
		<figcaption class="info-wrap">
				<h4 class="title">HP</h4>
				<p class="desc">Windows 10 Home 64
                                8th Generation Intel® Core™ i7 processor
                                 Intel® HD Graphics 520
                                  9 GB memory; 1 TB HDD
                                  15.3" diagonal HD+ display</p>
				<div class="rating-wrap">
					<div class="label-rating">191 reviews</div>
					<div class="label-rating">142 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
			
			<div class="price-wrap h5">
				<span class="price-new">$999</span> <del class="price-old">$1050</del>
			</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
<div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="l55.jpg" style="width:70%; height:40%"> </div>
		<figcaption class="info-wrap">
				<h4 class="title">HP EliteBook 820 G3 </h4>
				<p class="desc">Windows 10 Home 64
                                7th Generation Intel® Core™ i7 processor
                                 Intel® HD Graphics 620
                                  8 GB memory; 1 TB HDD
                                  17.3" diagonal HD+ display
                                

                                 
				</p>
				<div class="rating-wrap">
					<div class="label-rating">98 reviews</div>
					<div class="label-rating">146 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				
				<div class="price-wrap h5">
					<span class="price-new">$1999</span> <del class="price-old">$1500</del>
				</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> <!-- col // -->
<div class="col-sm-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="l66.jpg" style="width:70%; height:40%"></div>
		<figcaption class="info-wrap">
				<h4 class="title">Dell</h4>
				<p class="desc">Windows 10 Home 64
                                8th Generation Intel® Core™ i7 processor
                                 Intel® HD Graphics 620
                                  8 GB memory; 1 TB HDD
                                  17.3" diagonal HD+ display</p>
				<div class="rating-wrap">
					<div class="label-rating">178 reviews</div>
					<div class="label-rating">157 orders </div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
				
				<div class="price-wrap h5">
					<span class="price-new">$1150</span> <del class="price-old">$1560</del>
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
