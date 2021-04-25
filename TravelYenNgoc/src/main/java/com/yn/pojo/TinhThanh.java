/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.pojo;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name="tinhthanh")
public class TinhThanh implements Serializable{

    /**
     * @return the tours
     */
    public List<Tour> getTours() {
        return tours;
    }

    /**
     * @param tours the tours to set
     */
    public void setTours(List<Tour> tours) {
        this.tours = tours;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    @OneToMany(mappedBy = "tinhthanh", fetch = FetchType.EAGER)
    private List<Tour> tours;
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
