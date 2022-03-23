package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Xinwen implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String biaoti;
    private String fenlei;
    private String tupian;
    private String tianjiaren;
    private Integer dianjilv;
    private String neirong;
    private String addtime;

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

    public String getFenlei() {
        return fenlei;
    }

    public void setFenlei(String fenlei) {
        this.fenlei = fenlei;
    }

    public String getTupian() {
        return tupian;
    }

    public void setTupian(String tupian) {
        this.tupian = tupian;
    }

    public String getTianjiaren() {
        return tianjiaren;
    }

    public void setTianjiaren(String tianjiaren) {
        this.tianjiaren = tianjiaren;
    }

    public Integer getDianjilv() {
        return dianjilv;
    }

    public void setDianjilv(Integer dianjilv) {
        this.dianjilv = dianjilv;
    }

    public String getNeirong() {
        return neirong;
    }

    public void setNeirong(String neirong) {
        this.neirong = neirong;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
