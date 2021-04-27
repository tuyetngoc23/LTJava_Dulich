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
@Table(name = "loaitour")
public class LoaiTour implements Serializable {

    /**
     * @return the products
     */
    public List<Tour> getProducts() {
        return products;
    }

    /**
     * @param products the products to set
     */
    public void setProducts(List<Tour> products) {
        this.products = products;
    }

    /**
     * @return the tours
     */


    /**
     * @return the id
     */
    /**
     * @return the content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param content the content to set
     */
    public void setContent(String content) {
        this.content = content;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String content;
    @OneToMany(mappedBy = "loaiTourID", fetch = FetchType.EAGER)
    private List<Tour> products;

    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }
}
