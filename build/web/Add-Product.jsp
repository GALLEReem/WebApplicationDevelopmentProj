<%@page import="Data.User"%>
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
        <title>Reem Gallery Art | Add Product</title>

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
                                <button  type="submit"><img src="img/core-img/search.png" alt=""></button>
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
                    <a href="index.html"><img src="img/core-img/logo2.jpeg" alt=""></a>
                </div>
                <!-- Navbar Toggler -->
                <div class="amado-navbar-toggler" >
                    <span></span><span></span><span></span>
                </div>
            </div>

            <!-- Header Area Start -->
            <header class="header-area clearfix">
                <!-- Close Icon -->
                <div class="nav-close" >
                    <i class="fa fa-close"  aria-hidden="true"></i>
                </div>
                <!-- Logo -->
                <div class="logo">
                    <a href="index.jsp"><img src="img/core-img/logo2.jpeg" alt=""></a>
                </div>
                <!-- Amado Nav -->
                <nav class="amado-nav">
                    <%
                        User u = null;
                        String AccountType = "";
                        if (session.getAttribute("user") != null) {
                            u = (User) request.getSession().getAttribute("user");
                            AccountType = u.getAccountType();

                    %>
                    <span style="
                          font-size: 17px;
                          position: relative;
                          top: -54px;
                          "class="badge badge-secondary">Hi <%= u.getFirstName()%></span> 
                    <a style="
                       position: relative;
                       top: -54px;padding: 0rem 0rem !important;
                       "href="./logout.jsp" class="btn btn-link">Logout</a>
                    <%
                        }
                    %>

                    <ul>
                        <li ><a href="index.jsp">Home</a></li>
                        <li><a href="shop.jsp">Shop</a></li>
                            <%
                                if (AccountType.equals("Artist")) {

                            %>
                        <li class="active"><a href="Add-Products.jsp">Add Product</a></li>
                    <li ><a href="MyProducts.jsp">My Product</a></li>
                        <%                            }


                        %>

                        <li><a  href="MyOrders.jsp">My Orders</a></li>

                        <li><a href="cart.jsp">Cart</a></li>
                        <li><a href="checkout.jsp">Checkout</a></li>
                    </ul>
                </nav>
                <!-- Button Group -->
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

                                <div class="cart-title">
                                    <h2>Add New Product</h2>
                                </div>
                                   <%
                                    if (request.getParameter("id") != null) {
                                        String msg = request.getParameter("id");
                                        if (msg.equals("success")) {
                                    %>
                                <center><div style="font-size: 18px;color:green;font-family: serif;">Product Added Successfully</div></center>              
                                    <%
                                            }
                                        }
                                    %>
                                <form action="ProductInsert" method="post">
                                    <div class="row">
                                        <div class="col-12 mb-3">
                                            <input type="text" class="form-control" id="ProductName" name="ProductName" placeholder="Product Name" value="" required="">
                                        </div>
                                        <div class="col-12 mb-3">
                                            <input type="number" class="form-control" id="price" name="price"placeholder="Price in USD $" value=""required="">
                                        </div>
                                        <div class="col-12 mb-3">
                                            <input type="number" class="form-control mb-3" id="Quantity" name="Quantity" placeholder="Quantity" value=""required="">
                                        </div>

                                        <span style="
                                              position: relative;
                                              left: 20px;
                                              ">Product Picture  </span>  <div class="file-field" style="
                                              position: relative;
                                              left: 45px;
                                              ">
                                            <div class="btn btn-primary btn-sm float-left">
                                                <span>Choose Main Picture</span>
                                                <input name="file" type="file" >
                                            </div>
                                        </div>
                                        <br><br><br>
                                        <div class="col-12 mb-3">
                                            <textarea name="description" class="form-control w-100" id="comment" cols="30" rows="10" placeholder="Product Description" required=""></textarea>
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