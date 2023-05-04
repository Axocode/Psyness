package interDatos;

import java.util.ArrayList;
import java.util.List;

public class Iseria {
    private List<Idatos> Lista;

    public Iseria() {}
    
    public boolean loadLista()
    {
        Idatos datos = null;
        Lista = new ArrayList<>();
        for(int i = 1; i <= 5; i++) {
            datos = new Idatos();
            datos.setIusuario(String.format("Alumno %d", i));
            datos.setIcontra(String.format("Alumno %d", i));
            datos.setIcorreo(String.format("Alumno %d", i));
            datos.setIid(String.format("Alumno %d", i));
            datos.setIseguidores((int)(i));
            datos.setIseguidos((int)(i));
            datos.setIedad(String.format("Alumno %d", i));
            Lista.add(datos);
        }
        return Lista != null && !Lista.isEmpty();
    }
    
    public List<Idatos> getLista() {
        if(Lista == null || Lista.isEmpty()) {
            if(!loadLista()) {
                return null;
            }
        }
        return Lista;
    }

    public void setLista(List<Idatos> Lista) {
        this.Lista = Lista;
    }
    
}
