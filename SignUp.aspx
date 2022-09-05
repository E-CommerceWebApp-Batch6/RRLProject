<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="E_Cart_Online_Shopping.WebForm2" %>


<style>
    body {
        background-image: url("http://static4.depositphotos.com/1007566/318/i/450/dep_3183819-Blue-and-green-background.jpg");
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
    }
</style>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="Google Chrome" />
    <link href="css/Custome.css" rel="stylesheet" />


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggler="collapse" data-target=".navbar-collapse" >
                            <span class="src-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>

                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span><image src="Icons\Cart.png" alt="E-Cart Online Shopping" height="40px" width="40px;"/></span>E-Cart Online Shopping</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="Default.aspx">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact</a></li>
                             <li><a href="#">Blog</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="cart"></b></a>
                                <ul class="dropdown-menu">
                                  <li class="dropdown-header">Men</li>
                                   <li role="separator" class="divider"></li>
                                  <li><a href="#">Shirts</a></li>
                                  <li><a href="#">Pants</a></li>
                                  <li><a href="#">Denims</a></li>

                                  <li class="dropdown-header">Women</li>
                                   <li role="separator" class="divider"></li>
                                  <li><a href="#">Top</a></li>
                                  <li><a href="#">Leggings</a></li>
                                  <li><a href="#">Denims</a></li>
                                </ul>
                            </li>
                          <li class="active"><a href="SignUp.aspx">Register</a></li>
                          <li><a href="SignIn.aspx">Login</a></li>
                        </ul>
                    </div>

                </div>
        </div>
        <!---SignUp Page--->
        <div class="center-page">
            <label class="col-xs-11">User Name<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                :</label>
              <div class="col-xs-11">
            <asp:TextBox ID="txtUname" runat="server" TextMode="Password" Class="form-control" placeholder="Enter your User Name"></asp:TextBox>
              </div>

              <label class="col-xs-11">Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtPass" runat="server"  TextMode="Password" Class="form-control" placeholder="Enter your Password"></asp:TextBox>
              </div>

               <label class="col-xs-11">ConfirmPassword:</label>
              <div class="col-xs-11">
              <asp:TextBox ID="txtCPass" runat="server" Class="form-control" placeholder="Enter your Confirm Password"></asp:TextBox>
              </div>

              <label class="col-xs-11">Full Name:</label>
              <div class="col-xs-11">
              <asp:TextBox ID="txtName" runat="server" Class="form-control" placeholder="Enter your Name"></asp:TextBox>
              </div>

              <label class="col-xs-11">Email:</label>
              <div class="col-xs-11">
              <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter your Email"></asp:TextBox>
              </div>

              <label class="col-xs-11"></label>
               <div class="col-xs-11">
               <asp:Button ID="txtSignUp" runat="server" Class="btn btn-success" Text="SignUp" OnClick="txtSignUp_Click" />
                   <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
              </div>
            </div>
            </div>
            
            <!----SignUp pade end--->

           <!---Footer Contents --->
        <hr />
        <footer class="footer-pos">
            <div class="container">
                <p class="pull-right"><a href="#">Back to Top</a></p>
                <p>2022&copy;ShoppingWebsite.in &middot; <a href="Default.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">Products</a> </p>
            </div>
        </footer>
          <!---Footer Contents End---->
     </form>
</body>
</html>
