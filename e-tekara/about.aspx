<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="e_tekara.about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" >
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="CSS/about.css" rel="stylesheet" />
    <link href="CSS/footer.css" rel="stylesheet" />
  

</head>
<body>
    <form id="form1" runat="server">
    
        

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





























<!------ Include the above in your HEAD tag ---------->

<div class="container">
                    <div class="row">
                        <div class="heading-title text-center">
                            <h3 class="text-uppercase">Our Team </h3>
                            <p class="p-top-30 half-txt">Our Responsive Team. </p>
                        </div>

                        <div class="col-md-4 col-sm-4">
                            <div class="team-member">
                                <div class="team-img">
                                    <img src="t1.png" alt="team member" class="img-responsive">
                                </div>
                               
                            </div>
                            <div class="team-title">
                                <h5>Obada Alkhdor</h5>
                                <span>Developer</span>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="team-member">
                                <div class="team-img">
                                    <img src="t3.png" alt="team member" class="img-responsive">
                                </div>
                               
                            </div>
                            <div class="team-title">
                                <h5>Emran Sabi</h5>
                                <span>Software Engineering </span>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="team-member">
                                <div class="team-img">
                                    <img src="t2.png" alt="team member" class="img-responsive">
                                </div>
                               
                            </div>
                            <div class="team-title">
                                <h5>Hussein Ahmed</h5>
                                <span>Designer</span>
                            </div>
                        </div>
                         <div class="col-md-4 col-sm-4">
                            <div class="team-member">
                                <div class="team-img">
                                    <img src="t4.png" alt="team member" class="img-responsive">
                                </div>
                               
                            </div>
                            <div class="team-title">
                                <h5>Waleed Kleib </h5>
                                <span>Designer</span>
                            </div>
                        </div>

                    </div>

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
