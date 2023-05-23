package org.axocode.dao;

import java.io.Serializable;

public class InterPub implements Serializable{
    
    public InterPub(){
    }
    
    private int PubNumId;
    private String PubCont;

    public int getPubNumId() {
        return PubNumId;
    }

    public void setPubNumId(int PubNumId) {
        this.PubNumId = PubNumId;
    }

    public String getPubCont() {
        return PubCont;
    }

    public void setPubCont(String PubCont) {
        this.PubCont = PubCont;
    }
    
}
