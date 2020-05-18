package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import Data.User;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->\n");
      out.write("\n");
      out.write("        <!-- Title  -->\n");
      out.write("        <title>Reem Gallery Art | Home</title>\n");
      out.write("\n");
      out.write("        <!-- Favicon  -->\n");
      out.write("        <link rel=\"icon\" href=\"img/core-img/favicon.ico\">\n");
      out.write("\n");
      out.write("        <!-- Core Style CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/core-style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("<style>\n");
      out.write("* {\n");
      out.write("  box-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".column {\n");
      out.write("  float: left;\n");
      out.write("  width: 50%;\n");
      out.write("  padding: 7% 10% 10% 9%;\n");
      out.write("  height: 300px; \n");
      out.write("}\n");
      out.write("\n");
      out.write(".row:after {\n");
      out.write("  content: \"\";\n");
      out.write("  display: table;\n");
      out.write("  clear: both;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <!-- Search Wrapper Area Start -->\n");
      out.write("        <div class=\"search-wrapper section-padding-100\">\n");
      out.write("            <div class=\"search-close\">\n");
      out.write("                <i class=\"fa fa-close\" aria-hidden=\"true\"></i>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-12\">\n");
      out.write("                        <div class=\"search-content\">\n");
      out.write("                            <form action=\"#\" method=\"get\">\n");
      out.write("                                <input type=\"search\" name=\"search\" id=\"search\" placeholder=\"Type your keyword...\">\n");
      out.write("                                <button type=\"submit\"><img src=\"img/core-img/search.png\" alt=\"\"></button>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Search Wrapper Area End -->\n");
      out.write("\n");
      out.write("        <!-- ##### Main Content Wrapper Start ##### -->\n");
      out.write("        <div class=\"main-content-wrapper d-flex clearfix\">\n");
      out.write("\n");
      out.write("            <!-- Mobile Nav (max width 767px)-->\n");
      out.write("            <div class=\"mobile-nav\">\n");
      out.write("                <!-- Navbar Brand -->\n");
      out.write("                <div class=\"amado-navbar-brand\">\n");
      out.write("                    <a href=\"index.html\"><img src=\"img/core-img/logo2.jpeg\" alt=\"\"></a>\n");
      out.write("                </div>\n");
      out.write("                <!-- Navbar Toggler -->\n");
      out.write("                <div class=\"amado-navbar-toggler\">\n");
      out.write("                    <span></span><span></span><span></span>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Header Area Start -->\n");
      out.write("            <header class=\"header-area clearfix\">\n");
      out.write("                <!-- Close Icon -->\n");
      out.write("                <div class=\"nav-close\">\n");
      out.write("                    <i class=\"fa fa-close\" aria-hidden=\"true\"></i>\n");
      out.write("                </div>\n");
      out.write("                <!-- Logo -->\n");
      out.write("                <div class=\"logo\">\n");
      out.write("                    <div class=\"shadow-sm p-3 mb-5 bg-white rounded\">\n");
      out.write("                    <a href=\"index.jsp\"><img src=\"img/core-img/logo2.jpeg\" alt=\"\"></a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- Amado Nav -->\n");
      out.write("                <nav class=\"amado-nav\">\n");
      out.write("                    ");

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
                    
      out.write("\n");
      out.write("                    <span style=\"\n");
      out.write("                          font-size: 17px;\n");
      out.write("                          position: relative;\n");
      out.write("                          top: -54px;\n");
      out.write("                          \"class=\"badge badge-secondary\">Hi ");
      out.print( u.getFirstName());
      out.write("</span> \n");
      out.write("                    <a style=\"\n");
      out.write("                       position: relative;\n");
      out.write("                       top: -54px;padding: 0rem 0rem !important;\n");
      out.write("                       \"href=\"./logout.jsp\" class=\"btn btn-link\">Logout</a>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("\n");
      out.write("                    <ul>\n");
      out.write("                        <li class=\"active\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                        <li><a href=\"shop.jsp\">Shop</a></li>\n");
      out.write("                            ");

                                if (AccountType.equals("Artist")) {

                            
      out.write("\n");
      out.write("                        <li ><a href=\"Add-Product.jsp\">Add Product</a></li>\n");
      out.write("                        <li ><a href=\"MyProducts.jsp\">My Products</a></li>\n");
      out.write("                            ");
                            }


                            
      out.write("\n");
      out.write("                            ");
                    if (session.getAttribute("user") != null) {

                            
      out.write("\n");
      out.write("                        <li><a href=\"MyOrders.jsp\">My Orders</a></li>\n");
      out.write("                            ");
                            }
                            
      out.write("\n");
      out.write("\n");
      out.write("                        <li><a href=\"cart.jsp\">Cart</a></li>\n");
      out.write("                        <li><a href=\"checkout.jsp\">Checkout</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </nav>\n");
      out.write("                <!-- Button Group -->\n");
      out.write("                ");
                    if (session.getAttribute("user") == null) {

                
      out.write("\n");
      out.write("                <div class=\"amado-btn-group mt-30 mb-100\">\n");
      out.write("                    <a href=\"./Register.jsp\" style=\"background-color:#e60073\" class=\"btn amado-btn mb-15\">Register</a>\n");
      out.write("                    <a href=\"./Login.jsp\" class=\"btn amado-btn active\">Login</a>\n");
      out.write("                </div>\n");
      out.write("                ");
                            }
                
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                <!-- Cart Menu -->\n");
      out.write("\n");
      out.write("\n");
      out.write("                <!-- Social Button -->\n");
      out.write("                <div class=\"social-info d-flex justify-content-between\">\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-pinterest\" aria-hidden=\"true\"></i></a>\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a>\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a>\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a>\n");
      out.write("                </div>\n");
      out.write("            </header>\n");
      out.write("            <!-- Header Area End -->\n");
      out.write("\n");
      out.write("            <!-- Product Catagories Area Start -->\n");
      out.write("            <div class=\"products-catagories-area clearfix\">\n");
      out.write("                <div >\n");
      out.write("                    <div id=\"carouselExampleControls\" class=\"carousel slide\" data-ride=\"carousel\" style=\"\n");
      out.write("                         width: 100%;\n");
      out.write("                         \">\n");
      out.write("                        <div class=\"carousel-inner\">\n");
      out.write("                            <div class=\"carousel-item active\">\n");
      out.write("                               <div class=\"shadow-sm p-3 mb-5 bg-white rounded\">\n");
      out.write("                                <img class=\"d-block w-100\" src=\"ProductPictures/horse2.jpeg\" alt=\"First slide\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"carousel-item\">\n");
      out.write("                                <div class=\"shadow-sm p-3 mb-5 bg-white rounded\">\n");
      out.write("                                <img class=\"d-block w-100\" src=\"ProductPictures/nature.jpeg\" alt=\"Second slide\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"carousel-item\">\n");
      out.write("                                <div class=\"shadow-sm p-3 mb-5 bg-white rounded\">\n");
      out.write("                                <img class=\"d-block w-100\" src=\"ProductPictures/horse2.jpeg\" alt=\"Third slide\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <a class=\"carousel-control-prev\" href=\"#carouselExampleControls\" role=\"button\" data-slide=\"prev\">\n");
      out.write("                            <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                            <span class=\"sr-only\">Previous</span>\n");
      out.write("                        </a>\n");
      out.write("                        <a class=\"carousel-control-next\" href=\"#carouselExampleControls\" role=\"button\" data-slide=\"next\">\n");
      out.write("                            <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                            <span class=\"sr-only\">Next</span>\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- Single Catagory -->\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"column\">\n");
      out.write("                            <div class=\"shadow p-3 mb-5 bg-white rounded\">\n");
      out.write("                            <div style=\"width: 90%;\">\n");
      out.write("                                <a href=\"shop.jsp\">\n");
      out.write("                                    <img src=\"ProductPictures/horse1.jpeg\" alt=\"\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Hover Content -->\n");
      out.write("                                    <div class=\"hover-content\">\n");
      out.write("                                        <div class=\"line\"></div>\n");
      out.write("                                        <h4>Paintings</h4>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"column\">\n");
      out.write("                            <div class=\"shadow p-3 mb-5 bg-white rounded\">\n");
      out.write("                            <div style=\"width: 90%;\">\n");
      out.write("                                <a href=\"shop.jsp\">\n");
      out.write("                                    <img src=\"ProductPictures/Pyramids.jpeg\" alt=\"\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Hover Content -->\n");
      out.write("                                    <div class=\"hover-content\">\n");
      out.write("                                        <div class=\"line\"></div>\n");
      out.write("                                        <h4>Egypt Pyramids</h4>\n");
      out.write("                                        <h6>Acrylic {20x30}</h6>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>  <br><br>\n");
      out.write("\n");
      out.write("                   \n");
      out.write("     <div class=\"row\">\n");
      out.write("                        <div class=\"column\">\n");
      out.write("                            <div class=\"shadow p-3 mb-5 bg-white rounded\">\n");
      out.write("                            <div style=\"width: 90%;\">\n");
      out.write("                                <a href=\"shop.jsp\">\n");
      out.write("                                    <img src=\"ProductPictures/faces.jpeg\" alt=\"\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Hover Content -->\n");
      out.write("                                    <div class=\"hover-content\">\n");
      out.write("                                        <div class=\"line\"></div>\n");
      out.write("                                        <h4>Urban Expressions</h4>\n");
      out.write("                                         <h6>Acrylic {40x60}</h6>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"column\">\n");
      out.write("                            <div class=\"shadow p-3 mb-5 bg-white rounded\">\n");
      out.write("                            <div style=\"width: 90%;\">\n");
      out.write("                                <a href=\"shop.jsp\">\n");
      out.write("                                    <img src=\"ProductPictures/nature.jpeg\" alt=\"\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Hover Content -->\n");
      out.write("                                    <div class=\"hover-content\">\n");
      out.write("                                        <div class=\"line\"></div>\n");
      out.write("                                        <h4>Oil Painting</h4>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <br><br>\n");
      out.write("                         <div class=\"row\">\n");
      out.write("                        <div class=\"column\">\n");
      out.write("                            <div class=\"shadow p-3 mb-5 bg-white rounded\">\n");
      out.write("                            <div style=\"width: 75%;\">\n");
      out.write("                                <a href=\"shop.jsp\">\n");
      out.write("                                    <img src=\"ProductPictures/sea2.jpg\" alt=\"\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Hover Content -->\n");
      out.write("                                    <div class=\"hover-content\">\n");
      out.write("                                        <div class=\"line\"></div>\n");
      out.write("                                        <h5>Seashore</h5>\n");
      out.write("                                        <h7>Acrylic {18x24}</h7>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"column\">\n");
      out.write("                            <div class=\"shadow p-3 mb-5 bg-white rounded\">\n");
      out.write("                            <div style=\"width: 90%;\">\n");
      out.write("                                <a href=\"shop.jsp\">\n");
      out.write("                                    <img src=\"ProductPictures/flowers.jpeg\" alt=\"\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Hover Content -->\n");
      out.write("                                    <div class=\"hover-content\">\n");
      out.write("                                        <div class=\"line\"></div>\n");
      out.write("                                        <h4>Flowers</h4>\n");
      out.write("                                        <h6>Oil Painting {30x35}</h6>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                         </div><br><br>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                         <div class=\"row\">\n");
      out.write("                        <div class=\"column\">\n");
      out.write("                            <div class=\"shadow p-3 mb-5 bg-white rounded\">\n");
      out.write("                            <div style=\"width: 90%;\">\n");
      out.write("                                <a href=\"shop.jsp\">\n");
      out.write("                                    <img src=\"ProductPictures/sea1.jpeg\" alt=\"\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Hover Content -->\n");
      out.write("                                    <div class=\"hover-content\">\n");
      out.write("                                        <div class=\"line\"></div>\n");
      out.write("                                        <h4>Abstract Art</h4>\n");
      out.write("                                         <h6>Acrylic {33x46}</h6>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"column\">\n");
      out.write("                            <div class=\"shadow p-3 mb-5 bg-white rounded\">\n");
      out.write("                            <div style=\"width: 90%;\">\n");
      out.write("                                <a href=\"shop.jsp\">\n");
      out.write("                                    <img src=\"ProductPictures/sea.jpeg\" alt=\"\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Hover Content -->\n");
      out.write("                                    <div class=\"hover-content\">\n");
      out.write("                                        <div class=\"line\"></div>\n");
      out.write("                                        <h4>Acrylic Painting</h4>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>  <br><br>  <br><br>  <br><br>\n");
      out.write("                    <!-- Single Catagory -->\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <!-- Single Catagory -->\n");
      out.write("                   \n");
      out.write("                    <!-- Single Catagory -->\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <!-- Single Catagory -->\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <!-- Single Catagory -->\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- Product Catagories Area End -->\n");
      out.write("        </div>\n");
      out.write("        <!-- ##### Main Content Wrapper End ##### -->\n");
      out.write("\n");
      out.write("        <!-- ##### Newsletter Area Start ##### -->\n");
      out.write("        <!-- ##### Newsletter Area End ##### -->\n");
      out.write("\n");
      out.write("        <!-- ##### Footer Area Start ##### -->\n");
      out.write("        <footer class=\"footer_area clearfix\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row align-items-center\">\n");
      out.write("                    <!-- Single Widget Area -->\n");
      out.write("                    <div class=\"col-12 col-lg-4\">\n");
      out.write("                        <div class=\"single_widget_area\">\n");
      out.write("                            <!-- Logo -->\n");
      out.write("                            <div class=\"footer-logo mr-50\">\n");
      out.write("                                <div class=\"shadow-sm p-3 mb-5 bg-white rounded\">\n");
      out.write("                                <a href=\"index.jsp\"><img src=\"img/core-img/logo2.jpeg\" alt=\"\"></a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Copywrite Text -->\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- Single Widget Area -->\n");
      out.write("                    <div class=\"col-12 col-lg-8\">\n");
      out.write("                        <div class=\"single_widget_area\">\n");
      out.write("                            <!-- Footer Menu -->\n");
      out.write("                            <div class=\"footer_menu\">\n");
      out.write("                                <nav class=\"navbar navbar-expand-lg justify-content-end\">\n");
      out.write("                                    <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#footerNavContent\" aria-controls=\"footerNavContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\"><i class=\"fa fa-bars\"></i></button>\n");
      out.write("                                    <div class=\"collapse navbar-collapse\" id=\"footerNavContent\">\n");
      out.write("                                        <ul class=\"navbar-nav ml-auto\">\n");
      out.write("                                            <li class=\"nav-item active\">\n");
      out.write("                                                <a class=\"nav-link\" href=\"index.jsp\">Home</a>\n");
      out.write("                                            </li>\n");
      out.write("                                            <li class=\"nav-item\">\n");
      out.write("                                                <a class=\"nav-link\" href=\"shop.jsp\">Shop</a>\n");
      out.write("                                            </li>\n");
      out.write("                                            <li class=\"nav-item\">\n");
      out.write("                                                <a class=\"nav-link\" href=\"Add-Product.jsp\">Add Product</a>\n");
      out.write("                                            </li>\n");
      out.write("                                            <li class=\"nav-item\">\n");
      out.write("                                                <a class=\"nav-link\" href=\"cart.jsp\">Cart</a>\n");
      out.write("                                            </li>\n");
      out.write("                                            <li class=\"nav-item\">\n");
      out.write("                                                <a class=\"nav-link\" href=\"checkout.jsp\">Checkout</a>\n");
      out.write("                                            </li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                </nav>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("        <!-- ##### Footer Area End ##### -->\n");
      out.write("\n");
      out.write("        <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->\n");
      out.write("        <script src=\"js/jquery/jquery-2.2.4.min.js\"></script>\n");
      out.write("        <!-- Popper js -->\n");
      out.write("        <script src=\"js/popper.min.js\"></script>\n");
      out.write("        <!-- Bootstrap js -->\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <!-- Plugins js -->\n");
      out.write("        <script src=\"js/plugins.js\"></script>\n");
      out.write("        <!-- Active js -->\n");
      out.write("        <script src=\"js/active.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
