/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.PrintWriter;


/**
 *
 * @author farhan
 */
public class LogoutModel implements Model {

    @Override
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try {
            PrintWriter out = response.getWriter();
            HttpSession sess = request.getSession(false);
            if (sess != null) {
                sess.invalidate();
            }
            response.sendRedirect("http://localhost:8080/olp/fc/?action=view&page=index");
        } catch (Exception e) {
            e.printStackTrace();

        }
    }
}
