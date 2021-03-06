﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="e_tekara.signUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Sign Up</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- Main css -->
    <link rel="stylesheet" href="CSS/style.css"/>
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
<body style="background-image:url('main_bg.jpg')">
     <nav class="navbar navbar-inverse" style="height:7%;background-color:#3c3d41;margin-top:0px; top: -116px; left: -6px;">
    <div class="navbar-header"  >
      <a class="navbar-brand" href="Default.aspx">ELECTRO</a>
    </div>
  <div class="container-fluid"  >
    <ul class="nav navbar-nav" >
      <li  ><a href="Default"><span class="glyphicon glyphicon-home"></span>Home</a></li>
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


</nav>
   <div runat="server" class="alert alert-warning alert-dismissible fade show" role="alert" hidden="hidden"   id="creation_alert" aria-disabled="True"> 
    
  <strong>Success!  </strong> Your account have been created .
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form method="POST" id="signup_form" class="signup-form" runat="server">
                        <h2 class="form-title">Create account</h2>
                         <div class="form-group">
                           Choose Profile Picture
                             <asp:FileUpload ID="p_img" runat="server" class="form-input" required="required" />
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="f_name" runat="server" class="form-input"   placeholder="Your First Name" required="required"/>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="l_name" runat="server"  class="form-input"   placeholder="Your Last Name" required="required"/>
                        </div>
                         <div class="form-group">
                           
                           
                             <asp:RadioButtonList ID="gender" runat="server" class="form-input" required="required">
                                 <asp:ListItem Selected="True">Female</asp:ListItem>
                                 <asp:ListItem>Male</asp:ListItem>
                             </asp:RadioButtonList>

                             
                             
                        </div>
                         <div class="form-group">
                           
                           <label for="cust_type" class="form-input">SignUp As:</label>
                             <asp:RadioButtonList ID="cust_type" runat="server" class="form-input" required="required">
                                 <asp:ListItem Selected="True">Seller</asp:ListItem>
                                 <asp:ListItem>Buyer</asp:ListItem>
                             </asp:RadioButtonList>

                             
                             
                        </div>
                         <div class="form-group">
                            <asp:TextBox ID="b_date" runat="server" type="date"  class="form-input"   placeholder="Your Birth Date MM/DD/YY" required="required"/>
                        </div>
                         <div class="form-group">
                            <asp:TextBox ID="username" runat="server"  class="form-input"   placeholder="Your Username" required="required"/>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="pass" type="password" runat="server" class="form-input" placeholder="Password" required="required"/>
                            
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="re_pass" type="password" runat="server" class="form-input" placeholder="Re-Password" required="required"/>
                            
                        </div>
                       
                        <div class="form-group">
                            <asp:Button runat="server" ID="signup_btn" class="form-submit"  Text="Sign up" OnClick="signup_btn_Click"  />
                        </div>
                    </form>
                    <p class="loginhere">
                        Have already an account ? <a href="login.aspx" class="loginhere-link">Login here</a>
                    </p>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
