package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Yuangong implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String touxiang;
    private String gonghao;
    private String zhiwei;
    private String xingming;
    private String xingbie;
    private String shouji;
    private String shanchanglingyu;
    private String jieshao;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTouxiang() {
        return touxiang;
    }

    public void setTouxiang(String touxiang) {
        this.touxiang = touxiang;
    }

    public String getGonghao() {
        return gonghao;
    }

    public void setGonghao(String gonghao) {
        this.gonghao = gonghao;
    }

    public String getZhiwei() {
        return zhiwei;
    }

    public void setZhiwei(String zhiwei) {
        this.zhiwei = zhiwei;
    }

    public String getXingming() {
        return xingming;
    }

    public void setXingming(String xingming) {
        this.xingming = xingming;
    }

    public String getXingbie() {
        return xingbie;
    }

    public void setXingbie(String xingbie) {
        this.xingbie = xingbie;
    }

    public String getShouji() {
        return shouji;
    }

    public void setShouji(String shouji) {
        this.shouji = shouji;
    }

    public String getShanchanglingyu() {
        return shanchanglingyu;
    }

    public void setShanchanglingyu(String shanchanglingyu) {
        this.shanchanglingyu = shanchanglingyu;
    }

    public String getJieshao() {
        return jieshao;
    }

    public void setJieshao(String jieshao) {
        this.jieshao = jieshao;
    }
}
