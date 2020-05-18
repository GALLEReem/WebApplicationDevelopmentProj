/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Web application lifecycle listener.
 *
 * @author TOSHIBA
 */
public class DBconnection implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
         Statement st = null;
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcex?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            sce.getServletContext().setAttribute("con", con);
            st = con.createStatement();
            sce.getServletContext().setAttribute("st", st);
            
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
