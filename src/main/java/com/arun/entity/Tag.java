package com.arun.entity;

import javax.persistence.Column;
import javax.persistence.Entity;

/**
 * Created by arun on 30/09/18.
 */
@Entity(name = "tag")
public class Tag extends BaseEntity {
    @Column(name = "name")
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
