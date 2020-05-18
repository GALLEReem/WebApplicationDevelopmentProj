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
            String id = request.getParameter("id");
            Statement st;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcex?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
                st = con.createStatement();

                st.executeUpdate("DELETE FROM jdbcex.products WHERE idproduct =" + id + "");
                //response.setIntHeader("Refresh", 2);
        %>
        <jsp:forward page="MyProducts.jsp"></jsp:forward>
        <%
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>

    </body>
</html>
