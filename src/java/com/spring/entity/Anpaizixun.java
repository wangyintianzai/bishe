package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Anpaizixun implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private Integer chufangyuyueid;
    private String yuyuebianhao;
    private String yuyueren;
    private String xingming;
    private String anpaizixunshi;
    private String zixunriqi;
    private String kaishishijian;
    private String jieshushijian;
    private String didian;
    private String jiean;

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

    public String getAnpaizixunshi() {
        return anpaizixunshi;
    }

    public void setAnpaizixunshi(String anpaizixunshi) {
        this.anpaizixunshi = anpaizixunshi;
    }

    public String getZixunriqi() {
        return zixunriqi;
    }

    public void setZixunriqi(String zixunriqi) {
        this.zixunriqi = zixunriqi;
    }

    public String getKaishishijian() {
        return kaishishijian;
    }

    public void setKaishishijian(String kaishishijian) {
        this.kaishishijian = kaishishijian;
    }

    public String getJieshushijian() {
        return jieshushijian;
    }

    public void setJieshushijian(String jieshushijian) {
        this.jieshushijian = jieshushijian;
    }

    public String getDidian() {
        return didian;
    }

    public void setDidian(String didian) {
        this.didian = didian;
    }

    public String getJiean() {
        return jiean;
    }

    public void setJiean(String jiean) {
        this.jiean = jiean;
    }
}
