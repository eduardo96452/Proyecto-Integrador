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
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

/**
 *
 * @author kevin
 */
public class Persona  {
    
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
    public void print(){
        System.out.println("dfgdfhfd");
    }
    public void addMessage(FacesMessage.Severity severity, String summary, String detail) {
        FacesContext.getCurrentInstance().
                addMessage(null, new FacesMessage(severity, summary, detail));
    }
    public String login(String usu, String cont) {
        String ok="Usuario incorrecto";
        Conexion unaConexion;
        unaConexion = new Conexion();
        unaConexion.getConnecion();
        try {
            PreparedStatement stmt = unaConexion.connecion.prepareStatement("SELECT usuario, contraseña FROM usuarios where usuario=? and contraseña=?");
            stmt.setString(1, usu);
            stmt.setString(2, cont);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                System.out.println(rs.getString("usuario"));
                System.out.println(rs.getString("contraseña"));
                ok="Usuario correcto";
            }
            unaConexion.connecion.close();
            
//        if (unaConexion == null) {
//            return "Error en la conexión";
//        } else {
//            String sentencia = "SELECT * FROM usuarios WHERE usuario='" + usuario + "'"
//                    + " AND clave='" + contraseña + "'";
//            try {
//                ResultSet resultSet = unaConexion.select(sentencia);
//                if (resultSet.next()) {
//                    this.usuario = resultSet.getString("usuario");
//                    this.contraseña = resultSet.getString("contraseña");
//                    return "Usuario correcto";
//                } else {
//                    return "Datos incorrectos";
//                }
//            } catch (SQLException e) {
//                return "Datos incorrectos" + e.getMessage();
//            }
//        }
        } catch (SQLException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("error conexion bd");
        }
        return ok;
    }
}
