<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="E_Cart_Online_Shopping.SignIn" %>


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
    <title>SignIn</title>
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
                            <li><a href="Default.aspx">Home</a></li>
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
                          <li><a href="SignUp.aspx">Register</a></li>
                          <li class="active"><a href="SignIn.aspx">Login</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
          </div>
        <!-----SignIn Form Start---->
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
        <div class="container">
            <div class="form-horizontal">
                <h2>Login Form</h2>
                <hr />

                <div class="form-group">
                    <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="UserName"></asp:Label>
                    <div class="col-md-3">

                        <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass="text-danger" ErrorMessage="Please Enter User Name" ControlToValidate="txtUsername" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                  </div>

                    <div class="form-group">
                    <asp:Label ID="Label2" CssClass="col-md-2 control-label" runat="server" Text="Password"></asp:Label>
                    <div class="col-md-3">

                        <asp:TextBox ID="txtPass" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtPass" CssClass="text-danger" ErrorMessage="Password Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  </div>

                    <div class="form-group">
                    <asp:Label ID="Label3" CssClass="col-md-2 control-label" runat="server" Text="Remember Me"></asp:Label>
                    <div class="col-md-3">

                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        </div>
                  </div>
            

                   <div class="form-group">
                         <asp:Button ID="btnLogin" CssClass="btn btn-success" runat="server" Text="Login" OnClick="btnLogin_Click" />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Register</asp:HyperLink>
                         <div class="col-md-3">
                        </div>
                  </div>

                <!------for forgot password------>
                  <div class="form-group">
                      <div class="col-md-2"></div>
                      <div class="col-md-6">
                          <asp:HyperLink ID="HyForgotPass" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
                      </div>
                      </div>

                <!-------Forgot Password End------->
                        <div class="form-group">
                         <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Label ID="lblError" CssClass="text-danger" runat="server" ></asp:Label>

                        </div>
                      </div>
    
       </div>
    </div> 

        <!--------SignUp Form End----->
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
