<%@page import="Data.User"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
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
            Statement st;
            ResultSet rs;
            // Connection con;
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcex?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            st = con.createStatement();
            String email = request.getParameter("email");
            String password = request.getParameter("Password");
            try {
                rs = st.executeQuery("SELECT * FROM jdbcex.users where email='" + email + "' and password='" + password + "'");
                if (rs.next()) {
                    User u = new User();
                    u.setEmail(rs.getString(1));
                    u.setFirstName(rs.getString(2));
                    u.setLastName(rs.getString(3));
                    u.setPassword(rs.getString(4));
                    u.setCountry(rs.getString(5));
                    u.setCity(rs.getString(6));
                    u.setAddress(rs.getString(7));
                    u.setZipCode(rs.getString(8));
                    u.setPhoneNumber(rs.getString(9));
                    u.setAccountType(rs.getString(10));
                    request.getSession().setAttribute("user", u);
                    response.sendRedirect("index.jsp");
                } else {
                    response.sendRedirect("Login.jsp?id=wrong");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        %>



    </body>
</html>
