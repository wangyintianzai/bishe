package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Timu implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String biaoti;
    private String leixing;
    private String daan;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBiaoti() {
        return biaoti;
    }

    public void setBiaoti(String biaoti) {
        this.biaoti = biaoti;
    }

    public String getLeixing() {
        return leixing;
    }

    public void setLeixing(String leixing) {
        this.leixing = leixing;
    }

    public String getDaan() {
        return daan;
    }

    public void setDaan(String daan) {
        this.daan = daan;
    }
}
