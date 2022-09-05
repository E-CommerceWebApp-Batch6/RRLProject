<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="E_Cart_Online_Shopping.WebForm1" %>


 <style>

    body {
        background-image: url("https://i.pinimg.com/736x/4a/55/e0/4a55e081da19d5ef1647907e4af39b72--pink-fabric-jersey-knits.jpg");
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
    }
     </style>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E-Cart Online Shopping</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="Google Chrome" />
    <link href="css/Custome.css" rel="stylesheet" />


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggler="collapse" data-target=".navbar-collapse">
                            <span class="src-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>

                        </button>

                       <a class="navbar-brand" style="font-size:24px;font-weight:300;font-palette:dark; color:white" href="Default.aspx"><span><image src="Icons\Ecart.jpeg" style="background-color:mediumvioletred" alt="E-Cart Online Shopping" height="40px" width="40px;"/></span> E-Cart Online Shopping </a>
                    </div>
                    <div class="navbar-collapse collapse" style="background-color:navy; width:100%; height:100px; color:" >
                        <ul class="nav navbar-nav navbar-right"  style="font-size:24px;font-weight:300;font-palette:dark" >
                            <li class="active"><a href="Default.aspx">Home</a></li>
                            <li style="color:ghostwhite"><a href="#">About</a></li>
                            <li style="color:ghostwhite"><a href="#">Contact</a></li>
                             
                            <li class="dropdown"> 
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<span class ="caret"></span><b class="cart"></b></a>
                               
                                <ul class="dropdown-menu" style="background-color:lavender;color:black;font-weight:bold;margin:3px;border-style:solid;border-color:white;position:relative">
                                  <li class="dropdown-header">Mobiles</li>
                                   <li role="separator" class="divider"></li>
                                  <li><a href="C:\Users\Nemika\source\repos\E-Cart Online Shopping\E-Cart Online Shopping\AddProduct.aspx">Shirts</a></li>
                                  <li><a href="#">Pants</a></li>
                                  <li><a href="#">Denims</a></li>

                                  <li class="dropdown-header">Women</li>
                                   <li role="separator" class="divider"></li>
                                  <li><a href="#">Top</a></li>
                                  <li><a href="#">Leggings</a></li>
                                  <li><a href="#">Denims</a></li>
                                </ul>
                            </li>
                            <li><a href="SignUp.aspx">Register</a></li>
                            <li><a href="SignIn.aspx">Login</a></li>

                        </ul>

                    </div>

                </div>


            </div>


            <!---image slider---->
            <div class="container">
                <h2>Carousel Example</h2>
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>

                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">

                        <div class="item active">
                            <image src="Img Slider\girlss.jpg" alt="Women" style="width: 100%; height: 300px;">
                        </div>


                        <div class="item ">
                            <image src="Img Slider\Womens.jpg" alt="Women" style="width: 100%; height: 300px;">
                        </div>

                        <div class="item">
                            <image src="Img Slider\Mens.jpg" alt="Men" style="width: 100%; height: 300px;">
                        </div>

                        <div class="item">
                            <image src="Img Slider\Mobiless.jpg" alt="Mobiles" style="width: 100%; height: 300px;">
                        </div>


                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <!---image slider End---->

        </div>
        <!---Middle Contents---->
        <!---Middle Contents---->
        <hr />
        <div class="container center ">
            <div class="row">
                <div class="col-lg-4">
                    <image class="img-circle" src="Mobile\Mobile.jpg" alt="thumb" width="140" height="140" />
                    <h2  > Mobiles</h2>
                    <p>
                        Experience the industry-leading 150W SuperVOOC charging on OnePlus 10R 5G and save more. Buy OnePlus 10R 5G with 150W charging and add 12-month Screen Protection Plan at ₹499. Read Blog. Multiple Payment Options.
                    </p>
                    <p><a class="btn btn-primary mb1 bg-fuchsia" href="https://www.91mobiles.com/" role="button">View More &raquo</a></p>


                </div>

                  <div class="col-lg-4">
                    <image class="img-circle" src="Images\Gadgetsss.jpeg" alt="thumb" width="140" height="140" />
                    <h2>Gadgets</h2>
                    <p>
                        GADGET is free software for cosmological N-body/SPH simulations written by Volker Springel at the Max Planck Institute for Astrophysics. The name is an acronym of "GAlaxies with Dark matter and Gas intEracT". It is released under the GNU GPL
                    </p>
                    <p><a class="btn btn-primary mb1 bg-fuchsia" href="https://gadgets360.com/" role="button">View More &raquo</a></p>
                </div>


              <div class="col-lg-4">
                <image class="img-circle" src="Images\Clothing.jpg" alt="thumb" width="140" height="140" />
                <h2>Clothings</h2>
                <p>
               All our descriptions are original (verified through Copyscape), stylistically edited, and checked for factual accuracy. Our fashion writing services even incorporate personalized edits that you might need, and tailor the descriptions just for your website.
                </p>
                <p><a class="btn btn-primary mb1 bg-fuchsia" href="https://www.amazon.in/" role="button">View More &raquo</a></p>
            </div>

            

                 <div class="col-lg-4">
                <image class="img-circle" src="Images\Footwear.jpg" alt="thumb" width="140" height="140" />
                <h2>Footwear</h2>
                <p>
                 Buy Footwear Online for Men, Women & Kids in India at Best Price SALE Women Men Kids NEW ARRIVALS Women Men Kids WOMEN Shoes Casuals Running Athleisure Walking Sandals 
                </p>
                <p><a class="btn btn-primary mb1 bg-fuchsia" href="https://www.relaxofootwear.com/" role="button">View More &raquo</a></p>
            </div>

                    
                <div class="col-lg-4">
                    <image class="img-circle" src="Images\Homeappliances.jpeg" alt="thumb" width="140" height="140" />
                    <h2>Home Appliances</h2>
                    <p>
                        Right from fabric care to ceiling fans, heaters to coolers, our range of home appliances are committed to make it simple and easy each day. Fabric Care Give your delicate and beautiful
                    </p>
                    <p><a class="btn btn-primary mb1 bg-fuchsia" href="https://www.sathya.in/" role="button">View More &raquo</a></p>


                </div>


                    
                <div class="col-lg-4">
                    <image class="img-circle" src="Images\furnitue.jpeg"  alt="thumb" width="140" height="140" />
                    <h2>Furnitures</h2>
                    <p>
                      These home furnishings are designed for your comfort and relaxation. Choose from a huge range of collections available online. So, picking the right one can enhance the overall beauty of your home.
                    </p>
                    <p><a class="btn btn-primary mb1 bg-fuchsia" href="https://www.pepperfry.com/" role="button">View More &raquo</a></p>


                </div>



                </div>

              

       <hr/>
        <!---Middle Contents End---->

        <!---Footer Contents --->
        <footer>
            <div class="container">
                <p class="pull-right"><a href="Default.aspx">back to home</a></p>
             
                <p class="pull-left">2022&copy;ShoppingWebsite.in &middot; <a href="Default.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">Products</a> </p>

            </div>
        </footer>




        <!---Footer Contents End---->

    </form>
</body>
</html>
