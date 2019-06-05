package Models;

import java.util.Vector;

public class UserDTO {
    private String usuario;
    private String contrasenia;
    private String nombres;
    private String apellido_pat;
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
    

    public void setValid(boolean valid) {
        this.valid = valid;
    }
            
    public boolean isValid(){
        return valid;
    }
}
