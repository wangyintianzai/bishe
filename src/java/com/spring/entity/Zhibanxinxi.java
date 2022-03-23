package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Zhibanxinxi implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private Integer peizhiduixiang;
    private String gonghao;
    private String zhiwei;
    private String xingming;
    private String xingqiji;
    private String keyuyueshijianshi;
    private String keyuyueshijianzhi;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPeizhiduixiang() {
        return peizhiduixiang;
    }

    public void setPeizhiduixiang(Integer peizhiduixiang) {
        this.peizhiduixiang = peizhiduixiang;
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

    public String getXingqiji() {
        return xingqiji;
    }

    public void setXingqiji(String xingqiji) {
        this.xingqiji = xingqiji;
    }

    public String getKeyuyueshijianshi() {
        return keyuyueshijianshi;
    }

    public void setKeyuyueshijianshi(String keyuyueshijianshi) {
        this.keyuyueshijianshi = keyuyueshijianshi;
    }

    public String getKeyuyueshijianzhi() {
        return keyuyueshijianzhi;
    }

    public void setKeyuyueshijianzhi(String keyuyueshijianzhi) {
        this.keyuyueshijianzhi = keyuyueshijianzhi;
    }
}
