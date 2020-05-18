/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import Data.User;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author TOSHIBA
 */
@WebServlet(name = "insertdatadb", urlPatterns = {"/insertdatadb"})
public class insertdatadb extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Statement st;
            // Connection con;
            ResultSet rs;
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcex?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            st = con.createStatement();
            // rs = st.executeQuery("select * from jdbcex.test");
            String typeAccount = request.getParameter("typeAccount");
            String first_name = request.getParameter("first_name");
            String last_name = request.getParameter("last_name");
            String email = request.getParameter("email");
            String password = request.getParameter("Password");
            String country = request.getParameter("country");
            String City = request.getParameter("City");
            String address = request.getParameter("address");
            String zipCode = request.getParameter("zipCode");
            String phone_number = request.getParameter("phone_number");
           
            //  
            rs = st.executeQuery("SELECT * FROM jdbcex.users where email='" + email + "'");

            if (rs.next()) {
                    response.sendRedirect("Register.jsp?id=wrong");
            } else {
                try {
//                    String query = " insert into jdbcex.users (email,firstName,lastName,password,country,city,address,zipCode,phoneNo,typeUser)"
//                            + " values (email, ?, ?, ?, ?, ? ,? ,? ,?, ? )";
                    st.executeUpdate("INSERT INTO jdbcex.users "
                            + "VALUES ('" + email + "', '" + first_name + "', '" + last_name + "', '" + password + "', '" + country + "','" + City + "','" + address + "','" + zipCode + "','" + phone_number + "','" + typeAccount + "')");
//                    PreparedStatement preparedStmt = con.prepareStatement(query);
//                    preparedStmt.setString(1, email);
//                    preparedStmt.setString(2, first_name);
//                    preparedStmt.setString(3, last_name);
//                    preparedStmt.setString(4, password);
//                    preparedStmt.setString(5, country);
//                    preparedStmt.setString(6, City);
//                    preparedStmt.setString(7, address);
//                    preparedStmt.setString(8, zipCode);
//                    preparedStmt.setString(9, phone_number);
//                    preparedStmt.setString(10, typeAccount);
//                    preparedStmt.execute();
                    response.sendRedirect("Register.jsp?id=success");
                } catch (Exception e) {
                    System.err.println(e.getMessage());
                    e.printStackTrace();
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
