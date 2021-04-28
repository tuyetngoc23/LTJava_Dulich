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
     @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String ten; 
    @OneToMany(mappedBy = "diemDenID",fetch = FetchType.EAGER)
    private List<Tour> toursDen;
    @OneToMany(mappedBy = "diemDiID",fetch = FetchType.EAGER)
    private List<Tour> toursDi;

    /**
     * @return the ten
     */
    public String getTen() {
        return ten;
    }

    /**
     * @param ten the ten to set
     */
    public void setTen(String ten) {
        this.ten = ten;
    }

    
    /**
     * @return the name
     */

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the tours_di
     */
    public List<Tour> getTours_di() {
        return toursDi;
    }

    /**
     * @param tours_di the tours_di to set
     */
    public void setTours_di(List<Tour> tours_di) {
        this.toursDi = tours_di;
    }

    /**
     * @return the tours_den
     */
    public List<Tour> getTours_den() {
        return toursDen;
    }

    /**
     * @param tours_den the tours_den to set
     */
    public void setTours_den(List<Tour> tours_den) {
        this.toursDi = tours_den;
    }
}
