/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bd;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author user
 */
public class conexion {
    public static Connection getConexion() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/parcial?user=root&password=");
            System.out.println("Conexion Satisfactoria");
        } catch (Exception e) {
             System.out.println("Fallo"+e);
        }
        return con;
    }
    public static void main(String[] args) {
      conexion.getConexion ();
    }
    
}
