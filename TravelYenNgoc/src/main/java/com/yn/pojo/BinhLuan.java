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
import javax.persistence.Temporal;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name="binhluan")
public class BinhLuan {

    /**
     * @return the tintuc
     */
    public TinTuc getTintuc() {
        return tintuc;
    }

    /**
     * @param tintuc the tintuc to set
     */
    public void setTintuc(TinTuc tintuc) {
        this.tintuc = tintuc;
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

    /**
     * @return the ngayBinhLuan
     */
    public Date getNgayBinhLuan() {
        return ngayBinhLuan;
    }

    /**
     * @param ngayBinhLuan the ngayBinhLuan to set
     */
    public void setNgayBinhLuan(Date ngayBinhLuan) {
        this.ngayBinhLuan = ngayBinhLuan;
    }

    /**
     * @return the noiDung
     */
    public String getNoiDung() {
        return noiDung;
    }

    /**
     * @param noiDung the noiDung to set
     */
    public void setNoiDung(String noiDung) {
        this.noiDung = noiDung;
    }

    /**
     * @return the customerId
     */
    public Customer getCustomerId() {
        return customerId;
    }

    /**
     * @param customerId the customerId to set
     */
    public void setCustomerId(Customer customerId) {
        this.customerId = customerId;
    }


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date ngayBinhLuan;
    private String noiDung;
    

    
    @ManyToOne
    @JoinColumn(name = "tintuc_id")
    private TinTuc tintuc;
    
    @ManyToOne
    @JoinColumn(name = "customer_id")
    private Customer customerId;
}
