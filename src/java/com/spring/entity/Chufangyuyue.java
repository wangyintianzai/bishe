package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Chufangyuyue implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String yuyuebianhao;
    private String yuyueren;
    private String xingming;
    private String xingbie;
    private String shouji;
    private String banji;
    private Double zongdefen;
    private String zhuangtai;
    private String chufangjielun;
    private String addtime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getBanji() {
        return banji;
    }

    public void setBanji(String banji) {
        this.banji = banji;
    }

    public Double getZongdefen() {
        return zongdefen;
    }

    public void setZongdefen(Double zongdefen) {
        this.zongdefen = zongdefen;
    }

    public String getZhuangtai() {
        return zhuangtai;
    }

    public void setZhuangtai(String zhuangtai) {
        this.zhuangtai = zhuangtai;
    }

    public String getChufangjielun() {
        return chufangjielun;
    }

    public void setChufangjielun(String chufangjielun) {
        this.chufangjielun = chufangjielun;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
