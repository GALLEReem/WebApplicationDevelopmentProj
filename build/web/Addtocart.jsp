<%@page import="java.util.ArrayList"%>
<%@page import="Data.Cart"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                Statement st;
                ResultSet rs;
                session = request.getSession();
                String id = request.getParameter("id");
                Class.forName("com.mysql.jdbc.Driver");
                java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcex?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
                st = con.createStatement();
                rs = st.executeQuery("select p.productName,p.price,p.quantity,p.pic,p.idproduct from jdbcex.products p where p.idproduct='" + id + "'");
                ArrayList<Cart> addCart = new ArrayList<Cart>();
                if (session.getAttribute("cart") == null) {
                    while (rs.next()) {
                        addCart.add(new Cart(rs.getString(5), rs.getString(4), rs.getString(1), rs.getString(2), rs.getInt(3)));
                    }
                } else {
                    addCart = (ArrayList<Cart>) session.getAttribute("cart");
                    boolean checkID = false;
                    for (int i = 0; i < addCart.size(); i++) {
                        if (addCart.get(i).getIDproduct().equalsIgnoreCase(id)) {
                            addCart.get(i).setQuantity(addCart.get(i).getQuantity() + 1);
                            checkID = true;
                            break;
                        }
                    }
                    if (checkID == false) {
                        while (rs.next()) {
                            addCart.add(new Cart(rs.getString(5), rs.getString(4), rs.getString(1), rs.getString(2), rs.getInt(3)));
                        }
                    }
                }
                session.setAttribute("cart", addCart);
                response.sendRedirect("cart.jsp");
            } catch (Exception e) {
                e.printStackTrace();
            }

        %>


        <h1></h1>
    </body>
</html>
