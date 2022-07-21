/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.faces.bean.ManagedBean;
import javax.enterprise.context.SessionScoped;

/**
 *
 * @author Eduardo
 */
public class Persona {

    int id;
    String usuario;
    String contraseña;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public Persona() {
    }

    public Persona(int id, String usuario, String contraseña) {
        this.id = id;
        this.usuario = usuario;
        this.contraseña = contraseña;

    }

    public void print() {
        System.out.println("dfgdfhfd");
    }

    public String login(String usu, String cont) {
        String ok="Usuario incorrecto";
        Conexion unaConexion;
        unaConexion = new Conexion();
        unaConexion.getConnecion();
        try {
            PreparedStatement stmt = unaConexion.connecion.prepareStatement("SELECT P.email, U.clave from usuarios U inner join persona P on U.cedula=P.cedula where P.email=? and U.clave=?");
            stmt.setString(1, usu);
            stmt.setString(2, cont);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                System.out.println(rs.getString("usuario"));
                System.out.println(rs.getString("contraseña"));
                ok = "Usuario correcto";
            }
            unaConexion.connecion.close();
        } catch (SQLException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("error conexion bd");
        }
        return ok;
    }
}
