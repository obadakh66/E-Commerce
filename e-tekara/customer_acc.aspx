<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer_acc.aspx.cs" Inherits="e_tekara.customer_acc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link href="CSS/footer.css" rel="stylesheet" />
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="CSS/footer.css" rel="stylesheet" />
        <style>


   input[type=text] 
   {
    width: 150px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 20px;
    -webkit-transition: width 0.2s ease-in-out;
    transition: width 0.2s ease-in-out;
    
   }
                                
input[type=text]:focus 
{
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
     
    </style>
    <title>User Account</title>
</head>
    <body>
        <nav class="navbar navbar-inverse" style="height:7%;background-color:#3c3d41;">
    <div class="navbar-header"  >
      <a class="navbar-brand" href="Default.aspx">ELECTRO</a>
    </div>
  <div class="container-fluid"  >
    <ul class="nav navbar-nav" >
      <li  ><a href="Default"><span class="glyphicon glyphicon-home"></span>Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-list"></span>Catalouge</a>
       
          <ul class=" dropdown-menu primary " style=" position:absolute; top:50px; color:white" >
          <li class="lis"><a href="tv.aspx" style="color:white;">TV</a></li>
          <li class="lis"><a href="microwave.aspx" style="color:white;">Microwave</a></li>
          <li class="lis"><a href="laptop.aspx" style="color:white;">Laptop</a></li>
          <li class="lis"><a href="mobilePhone.aspx" style="color:white;">Mobile Phones</a></li>
        </ul>
      </li>
      <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>About</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-phone"></span>Contact</a></li>
      <li><a href="login.aspx"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
        
    </ul>



 
        
  </div>


</nav>
         <center><form id="form1" runat="server" style="height:505px">
        <div class="card">

                    <div class="card-body">
                           <div class="card-title mb-4">
                            <div class="d-flex justify-content-start">
                              
                                <div class="userData ml-3">
                                    <asp:Image ID="Image1" runat="server" Height="150px" Width="148px"  CssClass="card-img"></asp:Image>
                                    <asp:Label runat="server" ID="fname_label" class="d-block" style="font-size: 1.5rem; font-weight: bold"/>
                                   
                                </div>
                              
                            </div>
                        </div>
                        </div>
            </div>
        <div class="row">
		                <div class="col-md-12">
                            <table class="table table-hover" style="width:60%;margin-top:4ex">
                                <tr>
                                    <th>
		                    
                                <label for="user_id_label" class="col-4 col-form-label">User ID</label> 
                                </th>
                                    <th style="text-align:center">
                                        <div class="col-8">
                                  <asp:Label ID="user_id_label" runat="server"  class="form-control here" Enabled="False" />
                                </div>
                                        </th>
                                    </tr>
                                
                                
                                <tr>       
                                <th >
                                <label for="username_label" class="col-4 col-form-label">UserName</label> 
                                    </th>
                                    <th style="text-align:center">
                                <div class="col-8">
                                  <asp:Label ID="username_label" runat="server"  class="form-control here" Enabled="False" />
                                </div>
                                        </th>
                                    </tr>
                                
                              <tr><th>
                                <label for="fullName_label" class="col-4 col-form-label">Full Name</label> 
                                  </th>
                                  <th style="text-align:center">
                                <div class="col-8">
                                   <asp:Label ID="fullName_label" runat="server"  class="form-control here" Enabled="False" />
                                </div>
                                      </th>
                                  </tr>
                              <tr><th>
                                  <label for="DB_label" class="col-4 col-form-label">Date Of Birth </label> 
                                  </th>
                                  <th style="text-align:center">
                                <div class="col-8">
                                  <asp:Label ID="DB_label" runat="server"  class="form-control here" Enabled="False" />
                                    </div>
                              </th></tr>
                               <tr><th>
                                <label for="email_label" class="col-4 col-form-label">Gender </label> 
                                   </th>
                                   <th style="text-align:center">
                                <div class="col-8">
                                  <asp:Label ID="email_label" runat="server"  class="form-control here" Enabled="False" />
                                    </div>
                                       </th>

                               </tr>
                                 <tr><th>
                                <label for="email_label" class="col-4 col-form-label">Customer Type </label> 
                                   </th>
                                   <th style="text-align:center">
                                <div class="col-8">
                                  <asp:Label ID="customer_type" runat="server"  class="form-control here" Enabled="False" />
                                    </div>
                                       </th>

                               </tr>
                            
                            
                                 
                              
                              
                                </table>
                          </div>    
                            
                                
		                </div>
                         
       </form></center>
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
                        <li><a href="#">About Us</a></li>
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
