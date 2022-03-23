package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Lunbotu implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String title;
    private String image;
    private String url;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
