/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author kevin
 */
public class Conexion {
    public Connection connecion;
    Statement statement;
    ResultSet resultSet;

    public Conexion() {
    }
    
    public Connection getConnecion() {
        try{
            Class.forName("org.postgresql.Driver"); 
        }catch(Exception e){
            System.out.println("No encontro driver");
        }
        try{
            String url = "jdbc:postgresql://localhost:5432/postgres";
            connecion = DriverManager.getConnection(url, "postgres", "admin");
            
            
        }catch(Exception ee){
            System.out.println(ee.toString());
        }
        return connecion;
    }
    public ResultSet select(String sentence) throws SQLException {
        resultSet = statement.executeQuery(sentence);

        return resultSet;
    }
}
