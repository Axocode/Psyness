package interPub;

import java.io.Serializable;

public class Ireqs implements Serializable  {
    
    private int PubNum;
    private String PubNom;
    private String PubCont;
    
    
    public int getPubNum() {
        return PubNum;
    }

    public void setPubNum(int PubNum) {
        this.PubNum = PubNum;
    }

    public String getPubNom() {
        return PubNom;
    }

    public void setPubNom(String PubNom) {
        this.PubNom = PubNom;
    }

    public int getPubNumMegust() {
        return PubNumMegust;
    }

    public void setPubNumMegust(int PubNumMegust) {
        this.PubNumMegust = PubNumMegust;
    }

    public int getPubNumFavs() {
        return PubNumFavs;
    }

    public void setPubNumFavs(int PubNumFavs) {
        this.PubNumFavs = PubNumFavs;
    }
    private int PubNumMegust;
    private int PubNumFavs;

    public String getPubCont() {
        return PubCont;
    }

    public void setPubCont(String PubCont) {
        this.PubCont = PubCont;
    }
    
}
