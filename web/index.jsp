<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
        <title>Reem Gallery Art | Home</title>

        <!-- Favicon  -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Core Style CSS -->
        <link rel="stylesheet" href="css/core-style.css">
        <link rel="stylesheet" href="style.css">
<style>
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 50%;
  padding: 7% 10% 10% 9%;
  height: 300px; 
}

.row:after {
  content: "";
  display: table;
  clear: both;
}
</style>
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
                    <a href="index.html"><img src="img/core-img/logo2.jpeg" alt=""></a>
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
                    <div class="shadow-sm p-3 mb-5 bg-white rounded">
                    <a href="index.jsp"><img src="img/core-img/logo2.jpeg" alt=""></a>
                    </div>
                </div>
                <!-- Amado Nav -->
                <nav class="amado-nav">
                    <%
                        User u = null;
                        Statement st;
                        ResultSet rs = null;
                        // Connection con;
                        Class.forName("com.mysql.jdbc.Driver");
                        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcex?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
                        st = con.createStatement();
                        String AccountType = "";
                        if (session.getAttribute("user") != null) {
                            u = (User) request.getSession().getAttribute("user");
                            AccountType = u.getAccountType();
                            rs = st.executeQuery("select p.idproduct,p.productName,p.price,p.quantity from jdbcex.users u,jdbcex.products p where p.email='" + u.getEmail() + "' and u.email=p.email");
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
                        <li class="active"><a href="index.jsp">Home</a></li>
                        <li><a href="shop.jsp">Shop</a></li>
                            <%
                                if (AccountType.equals("Artist")) {

                            %>
                        <li ><a href="Add-Product.jsp">Add Product</a></li>
                        <li ><a href="MyProducts.jsp">My Products</a></li>
                            <%                            }


                            %>
                            <%                    if (session.getAttribute("user") != null) {

                            %>
                        <li><a href="MyOrders.jsp">My Orders</a></li>
                            <%                            }
                            %>

                        <li><a href="cart.jsp">Cart</a></li>
                        <li><a href="checkout.jsp">Checkout</a></li>
                    </ul>
                </nav>
                <!-- Button Group -->
                <%                    if (session.getAttribute("user") == null) {

                %>
                <div class="amado-btn-group mt-30 mb-100">
                    <a href="./Register.jsp" style="background-color:#e60073" class="btn amado-btn mb-15">Register</a>
                    <a href="./Login.jsp" class="btn amado-btn active">Login</a>
                </div>
                <%                            }
                %>


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

            <!-- Product Catagories Area Start -->
            <div class="products-catagories-area clearfix">
                <div >
                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" style="
                         width: 100%;
                         ">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                               <div class="shadow-sm p-3 mb-5 bg-white rounded">
                                <img class="d-block w-100" src="ProductPictures/horse2.jpeg" alt="First slide">
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="shadow-sm p-3 mb-5 bg-white rounded">
                                <img class="d-block w-100" src="ProductPictures/nature.jpeg" alt="Second slide">
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="shadow-sm p-3 mb-5 bg-white rounded">
                                <img class="d-block w-100" src="ProductPictures/horse2.jpeg" alt="Third slide">
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                    <!-- Single Catagory -->
                    <div class="row">
                        <div class="column">
                            <div class="shadow p-3 mb-5 bg-white rounded">
                            <div style="width: 90%;">
                                <a href="shop.jsp">
                                    <img src="ProductPictures/horse1.jpeg" alt="">
                                    </div>
                                    <!-- Hover Content -->
                                    <div class="hover-content">
                                        <div class="line"></div>
                                        <h4>Paintings</h4>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="column">
                            <div class="shadow p-3 mb-5 bg-white rounded">
                            <div style="width: 90%;">
                                <a href="shop.jsp">
                                    <img src="ProductPictures/Pyramids.jpeg" alt="">
                                    </div>
                                    <!-- Hover Content -->
                                    <div class="hover-content">
                                        <div class="line"></div>
                                        <h4>Egypt Pyramids</h4>
                                        <h6>Acrylic {20x30}</h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>  <br><br>

                   
     <div class="row">
                        <div class="column">
                            <div class="shadow p-3 mb-5 bg-white rounded">
                            <div style="width: 90%;">
                                <a href="shop.jsp">
                                    <img src="ProductPictures/faces.jpeg" alt="">
                                    </div>
                                    <!-- Hover Content -->
                                    <div class="hover-content">
                                        <div class="line"></div>
                                        <h4>Urban Expressions</h4>
                                         <h6>Acrylic {40x60}</h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="column">
                            <div class="shadow p-3 mb-5 bg-white rounded">
                            <div style="width: 90%;">
                                <a href="shop.jsp">
                                    <img src="ProductPictures/nature.jpeg" alt="">
                                    </div>
                                    <!-- Hover Content -->
                                    <div class="hover-content">
                                        <div class="line"></div>
                                        <h4>Oil Painting</h4>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <br><br>
                         <div class="row">
                        <div class="column">
                            <div class="shadow p-3 mb-5 bg-white rounded">
                            <div style="width: 75%;">
                                <a href="shop.jsp">
                                    <img src="ProductPictures/sea2.jpg" alt="">
                                    </div>
                                    <!-- Hover Content -->
                                    <div class="hover-content">
                                        <div class="line"></div>
                                        <h5>Seashore</h5>
                                        <h7>Acrylic {18x24}</h7>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="column">
                            <div class="shadow p-3 mb-5 bg-white rounded">
                            <div style="width: 90%;">
                                <a href="shop.jsp">
                                    <img src="ProductPictures/flowers.jpeg" alt="">
                                    </div>
                                    <!-- Hover Content -->
                                    <div class="hover-content">
                                        <div class="line"></div>
                                        <h4>Flowers</h4>
                                        <h6>Oil Painting {30x35}</h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                         </div><br><br>
                    
                    
                    
                         <div class="row">
                        <div class="column">
                            <div class="shadow p-3 mb-5 bg-white rounded">
                            <div style="width: 90%;">
                                <a href="shop.jsp">
                                    <img src="ProductPictures/sea1.jpeg" alt="">
                                    </div>
                                    <!-- Hover Content -->
                                    <div class="hover-content">
                                        <div class="line"></div>
                                        <h4>Abstract Art</h4>
                                         <h6>Acrylic {33x46}</h6>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="column">
                            <div class="shadow p-3 mb-5 bg-white rounded">
                            <div style="width: 90%;">
                                <a href="shop.jsp">
                                    <img src="ProductPictures/sea.jpeg" alt="">
                                    </div>
                                    <!-- Hover Content -->
                                    <div class="hover-content">
                                        <div class="line"></div>
                                        <h4>Acrylic Painting</h4>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>  <br><br>  <br><br>  <br><br>
                    <!-- Single Catagory -->


                    <!-- Single Catagory -->
                   
                    <!-- Single Catagory -->


                    <!-- Single Catagory -->


                    <!-- Single Catagory -->

                </div>
            </div>
            <!-- Product Catagories Area End -->
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
                                <div class="shadow-sm p-3 mb-5 bg-white rounded">
                                <a href="index.jsp"><img src="img/core-img/logo2.jpeg" alt=""></a>
                                </div>
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
                                                <a class="nav-link" href="Add-Product.jsp">Add Product</a>
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