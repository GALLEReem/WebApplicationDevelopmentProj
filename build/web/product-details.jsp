<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
        <title>Reem Gallery Art | Product Details</title>

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
                    <a href="index.html"><img src="img/core-img/logo2.jpeg" alt=""></a>
                </div>
                <!-- Amado Nav -->
                <nav class="amado-nav">
                    <%
                        User u = null;
                        Statement st;
                        ResultSet rs = null;
                        // Connection con;
                        Class.forName("com.mysql.jdbc.Driver");
                        String id = request.getParameter("id");
                        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcex?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
                        st = con.createStatement();
                        String AccountType = "";
                        if (session.getAttribute("user") != null) {
                            u = (User) request.getSession().getAttribute("user");
                            AccountType = u.getAccountType();
                            rs = st.executeQuery("select p.productName,p.price,p.pic,p.desc,p.quantity from jdbcex.products p WHERE p.idproduct =" + id + "");
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
                        <li class="active"><a href="shop.jsp">Shop</a></li>
                            <%
                                if (AccountType.equals("Artist")) {

                            %>
                        <li ><a href="Add-Product.jsp">Add Product</a></li>
                        <li ><a href="MyProducts.jsp">My Product</a></li>
                            <%                            }


                            %>


                        <li><a href="cart.jsp">Cart</a></li>
                        <li><a href="checkout.jsp">Checkout</a></li>
                    </ul>
                </nav>
                <!-- Button Group -->
                <%                         if (session.getAttribute("user") == null) {

                %>
                <div class="amado-btn-group mt-30 mb-100">
                    <a href="./Register.jsp" class="btn amado-btn mb-15">Register</a>
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

            <!-- Product Details Area Start -->
            <div class="single-product-area section-padding-100 clearfix">
                <div class="container-fluid">


                    <div class="row">
                        <div class="col-12 col-lg-7">
                            <div class="single_product_thumb">
                                <div id="product_details_slider" class="carousel slide" data-ride="carousel">
                                    <% 
                                        if (session.getAttribute("user") != null) {
                                        
                                        if (rs.next()) {
                                    %>
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <a class="gallery_img" href="img/product-img/sea1.jpeg">
                                                <img class="d-block w-100" src="ProductPictures/<%= rs.getString(3)%>" alt="First slide">
                                            </a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-5">
                            <div class="single_product_desc">
                                <!-- Product Meta Data -->
                                <div class="product-meta-data">
                                    <div class="line"></div>
                                    <p class="product-price">$<%= rs.getString(2)%></p>
                                    <a href="product-details.html">
                                        <!-- title -->  <h6><%= rs.getString(1)%></h6>
                                    </a>
                                    <!-- Ratings & Review -->

                                    <!-- Avaiable -->
                                    <p class="avaibility"><i class="fa fa-circle"></i> <%= rs.getString(5)%></p>
                                </div>

                                <div class="short_overview my-5">
                                    <p> <%= rs.getString(4)%></p>
                                </div>

                                <!-- Add to Cart Form -->
                                <form class="cart clearfix" method="post">
                                    <div class="cart-btn d-flex mb-50">
                                        <p>Qty</p>
                                       
                                            <input type="number" class="qty-text" id="qty" step="1" min="1" max="<%= rs.getString(5)%>" name="quantity" value="1">
                                           
                                    </div>
                                    <% }
                                    }else {
                            response.sendRedirect("Login.jsp?id=nologin");
                        }
                                    %>
                                </form>
                                <a style="color: Black"  class="btn amado-btn" href=Addtocart.jsp?id=<%=id%>> Add to cart </a></td>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Product Details Area End -->
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
                                <a href="index.html"><img src="img/core-img/logo2.png" alt=""></a>
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