package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Didian implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String didianmingcheng;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDidianmingcheng() {
        return didianmingcheng;
    }

    public void setDidianmingcheng(String didianmingcheng) {
        this.didianmingcheng = didianmingcheng;
    }
}
