/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.pojo;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name="thich")
public class Thich {

    /**
     * @return the customerIdThich
     */
    public Customer getCustomerIdThich() {
        return customerIdThich;
    }

    /**
     * @param customerIdThich the customerIdThich to set
     */
    public void setCustomerIdThich(Customer customerIdThich) {
        this.customerIdThich = customerIdThich;
    }

    /**
     * @return the tintucIdThich
     */
    public TinTuc getTintucIdThich() {
        return tintucIdThich;
    }

    /**
     * @param tintucIdThich the tintucIdThich to set
     */
    public void setTintucIdThich(TinTuc tintucIdThich) {
        this.tintucIdThich = tintucIdThich;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @ManyToOne
    @JoinColumn(name = "customerId")
    private Customer customerIdThich;
    @ManyToOne
    @JoinColumn(name = "tintuc_id")
    private TinTuc tintucIdThich;
}
