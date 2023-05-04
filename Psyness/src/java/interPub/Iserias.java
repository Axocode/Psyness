package interPub;

import java.util.ArrayList;
import java.util.List;

public class Iserias {
    private List<Ireqs> Lista;

    public Iserias() {}
    
    public boolean loadLista()
    {
        Ireqs Redatos = null;
        Lista = new ArrayList<>();
        for(int i = 1; i <= 5; i++) {
            Redatos = new Ireqs();
            Redatos.setPubNom(String.format(" %d", i));
            Redatos.setPubCont(String.format(" %d", i));
            Redatos.setPubNum((int)(i));
            Redatos.setPubNumFavs((int)(i));
            Redatos.setPubNumMegust((int)(i));
            
            Lista.add(Redatos);
        }
        return Lista != null && !Lista.isEmpty();
    }
    
    public List<Ireqs> getLista() {
        if(Lista == null || Lista.isEmpty()) {
            if(!loadLista()) {
                return null;
            }
        }
        return Lista;
    }

    public void setLista(List<Ireqs> Lista) {
        this.Lista = Lista;
    }
    
}
