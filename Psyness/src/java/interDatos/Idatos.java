
package interDatos;

import java.io.Serializable;

public class Idatos implements Serializable {
    
    private String Iusuario;
    private String Icontra;
    private String Icorreo;
    private String Iedad;
    private String Iid;
    private int Iseguidores;
    private int Iseguidos;

    public String getIusuario() {
        return Iusuario;
    }

    public void setIusuario(String Iusuario) {
        this.Iusuario = Iusuario;
    }

    public String getIcontra() {
        return Icontra;
    }

    public void setIcontra(String Icontra) {
        this.Icontra = Icontra;
    }

    public String getIcorreo() {
        return Icorreo;
    }

    public void setIcorreo(String Icorreo) {
        this.Icorreo = Icorreo;
    }

    public String getIid() {
        return Iid;
    }

    public void setIid(String Iid) {
        this.Iid = Iid;
    }

    public String getIedad() {
        return Iedad;
    }

    public void setIedad(String Iedad) {
        this.Iedad = Iedad;
    }

    public int getIseguidores() {
        return Iseguidores;
    }

    public void setIseguidores(int Iseguidores) {
        this.Iseguidores = Iseguidores;
    }

    public int getIseguidos() {
        return Iseguidos;
    }

    public void setIseguidos(int Iseguidos) {
        this.Iseguidos = Iseguidos;
    }

    

}