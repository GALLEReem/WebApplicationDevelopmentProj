/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import Data.Cart;
import Data.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author TOSHIBA
 */
@WebServlet(name = "Addtocart", urlPatterns = {"/Addtocart"})
public class Addtocart extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Addtocart</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Addtocart at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        processRequest(request, response);

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
        processRequest(request, response);
        try {
            Statement st;
            ResultSet rs;
            HttpSession session = request.getSession();
            String id = request.getParameter("id");
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcex?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            st = con.createStatement();
            rs = st.executeQuery("select p.productName,p.price,p.quantity,p.pic,p.idproduct from jdbcex.products p where p.idproduct='" + id + "'");
            ArrayList<Cart> addCart = new ArrayList<>();
            if (session.getAttribute("cart") == null) {
                addCart.add(new Cart(rs.getString(5), rs.getString(4), rs.getString(1), rs.getString(2), rs.getInt(3)));
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
                    addCart.add(new Cart(rs.getString(5), rs.getString(4), rs.getString(1), rs.getString(2), rs.getInt(3)));
                }
            }
            session.setAttribute("cart", addCart);
            response.sendRedirect("cart.jsp");
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
