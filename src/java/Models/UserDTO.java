package Models;

import java.util.Vector;

public class UserDTO {
    private String usuario;
    private String contrasenia;
    private String nombres;
    private String apellido_pat;
    private String apellido_mat;
    private String dni;
    private String id_grupo_usuario;
    private String id_policia;
    public boolean valid;

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellido_pat() {
        return apellido_pat;
    }

    public void setApellido_pat(String apellido_pat) {
        this.apellido_pat = apellido_pat;
    }

    public String getApellido_mat() {
        return apellido_mat;
    }

    public void setApellido_mat(String apellido_mat) {
        this.apellido_mat = apellido_mat;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getId_grupo_usuario() {
        return id_grupo_usuario;
    }

    public void setId_grupo_usuario(String id_grupo_usuario) {
        this.id_grupo_usuario = id_grupo_usuario;
    }

    public String getId_policia() {
        return id_policia;
    }

    public void setId_policia(String id_policia) {
        this.id_policia = id_policia;
    }
    

    public void setValid(boolean valid) {
        this.valid = valid;
    }
            
    public boolean isValid(){
        return valid;
    }
}
