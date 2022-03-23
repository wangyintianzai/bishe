package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Kaoshijieguo implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private Integer chufangyuyueid;
    private String yuyuebianhao;
    private String yuyueren;
    private String xingming;
    private String biaoti;
    private String leixing;
    private String daan;
    private Integer defen;
    private String zimu;
    private String wenjuanren;
    private String addtime;

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

    public Integer getDefen() {
        return defen;
    }

    public void setDefen(Integer defen) {
        this.defen = defen;
    }

    public String getZimu() {
        return zimu;
    }

    public void setZimu(String zimu) {
        this.zimu = zimu;
    }

    public String getWenjuanren() {
        return wenjuanren;
    }

    public void setWenjuanren(String wenjuanren) {
        this.wenjuanren = wenjuanren;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
