/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.pojo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Entity
@Table(name = "customer")
public class Customer implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String binhLuan;
    private int soLuotThich;
    @ManyToOne
    @JoinColumn(name="userid")
    private User user;

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

    /**
     * @return the binhLuan
     */
    public String getBinhLuan() {
        return binhLuan;
    }

    /**
     * @param binhLuan the binhLuan to set
     */
    public void setBinhLuan(String binhLuan) {
        this.binhLuan = binhLuan;
    }

    /**
     * @return the soLuotThich
     */
    public int getSoLuotThich() {
        return soLuotThich;
    }

    /**
     * @param soLuotThich the soLuotThich to set
     */
    public void setSoLuotThich(int soLuotThich) {
        this.soLuotThich = soLuotThich;
    }

    /**
     * @return the user
     */
    public User getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(User user) {
        this.user = user;
    }
}
