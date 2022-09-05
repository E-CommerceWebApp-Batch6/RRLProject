<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="E_Cart_Online_Shopping.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> User Home Page</title>
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
                            <li>
                                <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn" runat="server" Text="LogOut" />
                            </li>
                        </ul>
                    </div>
               </div>  
          </div>
       </div>
    </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
       
             <asp:Label ID="lblsuccess" runat="server" CssClass="text-primary" style="text-align:center" Font-Bold="true" ></asp:Label>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
         <br />
        <br />
        <br />


          <!---Footer Contents --->
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to Top</a></p>
                <p>2022&copy;ShoppingWebsite.in &middot; <a href="Default.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">Products</a> </p>

            </div>
        </footer>

           <!---Footer Contents End---->

    </form>
</body>
</html>
