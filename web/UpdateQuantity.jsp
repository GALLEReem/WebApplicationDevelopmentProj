<%@page import="java.util.ArrayList"%>
<%@page import="Data.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String idProduct = request.getParameter("id");
            String quantity = request.getParameter("quantity");
            int qty = Integer.parseInt(quantity);
            ArrayList<Cart> addCart = (ArrayList<Cart>) session.getAttribute("cart");
            for (int i = 0; i < addCart.size(); i++) {
                if (addCart.get(i).getIDproduct().equalsIgnoreCase(idProduct)) {
                    addCart.get(i-1).setQuantity(qty);
                    response.sendRedirect("cart.jsp");
                }
            }


        %>

    </body>
</html>
