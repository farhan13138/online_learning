/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import org.json.simple.JSONObject;

/**
 *
 * @author farhan
 */
public class Category implements Model {
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {

        try (PrintWriter out = response.getWriter()) {
            MyDao md = new MyDao(request);
            Statement st = md.getConnection();
            String q = "SELECT category_id,category_name FROM category_table";
            ResultSet rs = md.loadData(st,q);
            JSONObject obj = new JSONObject();
            while (rs.next()) {
                String s1 = (rs.getString("category_id"));
                String s2 = (rs.getString("category_name"));
                obj.put(s1,s2);
            }
            JSONObject ob = new JSONObject();
            ob.put("category", obj);
            out.println(ob.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}
