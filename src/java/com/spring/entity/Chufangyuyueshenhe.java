package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Chufangyuyueshenhe implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private Integer chufangyuyueid;
    private String yuyuebianhao;
    private String yuyueren;
    private String xingming;
    private Double zongdefen;
    private String shenhejieguo;
    private String beizhu;
    private String shenheren;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getChufangyuyueid() {
        return chufangyuyueid;
    }

    public void setChufangyuyueid(Integer chufangyuyueid) {
        this.chufangyuyueid = chufangyuyueid;
    }

    public String getYuyuebianhao() {
        return yuyuebianhao;
    }

    public void setYuyuebianhao(String yuyuebianhao) {
        this.yuyuebianhao = yuyuebianhao;
    }

    public String getYuyueren() {
        return yuyueren;
    }

    public void setYuyueren(String yuyueren) {
        this.yuyueren = yuyueren;
    }

    public String getXingming() {
        return xingming;
    }

    public void setXingming(String xingming) {
        this.xingming = xingming;
    }

    public Double getZongdefen() {
        return zongdefen;
    }

    public void setZongdefen(Double zongdefen) {
        this.zongdefen = zongdefen;
    }

    public String getShenhejieguo() {
        return shenhejieguo;
    }

    public void setShenhejieguo(String shenhejieguo) {
        this.shenhejieguo = shenhejieguo;
    }

    public String getBeizhu() {
        return beizhu;
    }

    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu;
    }

    public String getShenheren() {
        return shenheren;
    }

    public void setShenheren(String shenheren) {
        this.shenheren = shenheren;
    }
}
