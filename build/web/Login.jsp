<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Title  -->
        <title>Reem Gallery Art | Login</title>

        <!-- Favicon  -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Core Style CSS -->
        <link rel="stylesheet" href="css/core-style.css">
        <link rel="stylesheet" href="style.css">

    </head>

    <body>
        <!-- Search Wrapper Area Start -->
        <div class="search-wrapper section-padding-100">
            <div class="search-close">
                <i class="fa fa-close" aria-hidden="true"></i>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="search-content">
                            <form action="#" method="get">
                                <input type="search" name="search" id="search" placeholder="Type your keyword...">
                                <button type="submit"><img src="img/core-img/search.png" alt=""></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Search Wrapper Area End -->

        <!-- ##### Main Content Wrapper Start ##### -->
        <div class="main-content-wrapper d-flex clearfix">

            <!-- Mobile Nav (max width 767px)-->
            <div class="mobile-nav">
                <!-- Navbar Brand -->
                <div class="amado-navbar-brand">
                    <a href="index.jsp"><img src="img/core-img/logo2.jpeg" alt=""></a>
                </div>
                <!-- Navbar Toggler -->
                <div class="amado-navbar-toggler">
                    <span></span><span></span><span></span>
                </div>
            </div>

            <!-- Header Area Start -->
            <header class="header-area clearfix">
                <!-- Close Icon -->
                <div class="nav-close">
                    <i class="fa fa-close" aria-hidden="true"></i>
                </div>
                <!-- Logo -->
                <div class="logo">
                    <a href="index.jsp"><img src="img/core-img/logo2.jpeg" alt=""></a>
                </div>
                <!-- Amado Nav -->
                <nav class="amado-nav">
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="shop.jsp">Shop</a></li>
                        <li><a href="product-details.jsp">Product</a></li>
                        <li><a href="cart.jsp">Cart</a></li>
                        <li class="active"><a href="checkout.jsp">Checkout</a></li>
                    </ul>
                </nav>
                <!-- Button Group -->
                <div class="amado-btn-group mt-30 mb-100">
                    <a href="./Register.jsp" style="background-color:#e60073" class="btn amado-btn mb-15">Register</a>
                    <a href="./Login.jsp" class="btn amado-btn active">Login</a>
                </div>
                <!-- Cart Menu -->

                <!-- Social Button -->
                <div class="social-info d-flex justify-content-between">
                    <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                </div>
            </header>
            <!-- Header Area End -->

            <div class="cart-table-area section-padding-100">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 col-lg-8">
                            <div class="checkout_details_area mt-50 clearfix">
                                <br><br>
                                <div class="cart-title">
                                    <h2>Login</h2>
                                </div>
                                <%
                                    if (request.getParameter("id") != null) {
                                        String msg = request.getParameter("id");
                                        if (msg.equals("wrong")) {
                                %>
                                <center><div style="font-size: 18px;color:red;font-family: serif;">Sorry ! Wrong Informations.</div></center>              
                                    <%
                                        }
                                        if (msg.equals("success")) {
                                    %>
                                <center><div style="font-size: 18px;color:green;font-family: serif;">Thanks Success Login</div></center>              

                                <%
                                        }
                              if (msg.equals("nologin")) {
                                %>
                                <center><div style="font-size: 18px;color:red;font-family: serif;">Please Login First to see this page.</div></center>              
                                    <%
                                        }
                                    }
                                %>
                                <form action="LoginCheck.jsp" method="POST">
                                    <div class="row">

                                        <div class="col-12 mb-3">
                                            <input type="email" class="form-control" id="email" name="email" placeholder="Email" value="">
                                        </div>
                                        <div class="col-12 mb-3">
                                            <input type="Password" class="form-control" id="Password" name="Password" placeholder="Password" value="">
                                        </div>
                                    </div>
                                    <input type="submit" style="background-color:#e60073" class="btn amado-btn w-100" id="submit"  value="Submit">

                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <!-- ##### Main Content Wrapper End ##### -->

        <!-- ##### Newsletter Area Start ##### -->

        <!-- ##### Newsletter Area End ##### -->

        <!-- ##### Footer Area Start ##### -->
        <footer class="footer_area clearfix">
            <div class="container">
                <div class="row align-items-center">
                    <!-- Single Widget Area -->
                    <div class="col-12 col-lg-4">
                        <div class="single_widget_area">
                            <!-- Logo -->
                            <div class="footer-logo mr-50">
                                <a href="index.jsp"><img src="img/core-img/logo2.jpeg" alt=""></a>
                            </div>
                            <!-- Copywrite Text -->

                        </div>
                    </div>
                    <!-- Single Widget Area -->
                    <div class="col-12 col-lg-8">
                        <div class="single_widget_area">
                            <!-- Footer Menu -->
                            <div class="footer_menu">
                                <nav class="navbar navbar-expand-lg justify-content-end">
                                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#footerNavContent" aria-controls="footerNavContent" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                                    <div class="collapse navbar-collapse" id="footerNavContent">
                                        <ul class="navbar-nav ml-auto">
                                            <li class="nav-item active">
                                                <a class="nav-link" href="index.jsp">Home</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="shop.jsp">Shop</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="product-details.jsp">Product</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="cart.jsp">Cart</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="checkout.jsp">Checkout</a>
                                            </li>
                                        </ul>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- ##### Footer Area End ##### -->

        <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
        <script src="js/jquery/jquery-2.2.4.min.js"></script>
        <!-- Popper js -->
        <script src="js/popper.min.js"></script>
        <!-- Bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Plugins js -->
        <script src="js/plugins.js"></script>
        <!-- Active js -->
        <script src="js/active.js"></script>

    </body>

</html>