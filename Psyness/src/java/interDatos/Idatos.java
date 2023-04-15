
package interDatos;

import java.io.Serializable;

public class Idatos implements Serializable {
    
    private String Iusuario;
    private String Icontra;
    private String Icorreo;
    private String Iedad;
    private String Iid;
    private String Iactiva;

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

    public String getIactiva() {
        return Iactiva;
    }

    public void setIactiva(String Iactiva) {
        this.Iactiva = Iactiva;
    }
    

}