package org.axocode.dao;

import java.io.Serializable;

public class InterRealizanPubs implements Serializable{

    private InterUsers IUserNum;
    private InterPub PubNumId;
    
     public InterRealizanPubs(){
    }

    public InterUsers getiUserNum() {
        return IUserNum;
    }

    public void setiUserNum(InterUsers iUserNum) {
        this.IUserNum = iUserNum;
    }

    public InterPub getPubNumId() {
        return PubNumId;
    }

    public void setPubNumId(InterPub pubNumId) {
        this.PubNumId = pubNumId;
    }
    
}
