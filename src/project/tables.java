/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;

import java.sql.*;
import javax.swing.JOptionPane;
import jdk.nashorn.internal.scripts.JO;

/**
 *
 * @author TAHSHIN
 */
public class tables {

    public static void main(String[] args) {
        Connection con = null;
        Statement st = null;
        try {
            con = connectionProvider.getCon();
            st = con.createStatement();
            st.executeUpdate("Create table users(name varchar(200), email varchar(300),phone varchar(300),id varchar(300),password varchar(300) )");
            //st.executeUpdate("Create table room(roomNo varchar(100),roomType varchar(200), bed varchar(100),price int, status varchar(100))");
            JOptionPane.showMessageDialog(null, "Table created succesfully");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        } finally {
            try {
                con.close();
                st.close();
            } catch (Exception e) {

            }
        }
    }
}
