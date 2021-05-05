/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.pojo;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Entity
@Table(name="thongtinlienlac")
public class ThongTinLienLac implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String tenNguoiDi;
    private String sdt;
    private String diaChi;
    
    @OneToMany(mappedBy = "ttlienlacId")
    private List<Booking> bookingL;

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
     * @return the tenNguoiDi
     */
    public String getTenNguoiDi() {
        return tenNguoiDi;
    }

    /**
     * @param tenNguoiDi the tenNguoiDi to set
     */
    public void setTenNguoiDi(String tenNguoiDi) {
        this.tenNguoiDi = tenNguoiDi;
    }

    /**
     * @return the sdt
     */
    public String getSdt() {
        return sdt;
    }

    /**
     * @param sdt the sdt to set
     */
    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    /**
     * @return the diaChi
     */
    public String getDiaChi() {
        return diaChi;
    }

    /**
     * @param diaChi the diaChi to set
     */
    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    /**
     * @return the bookingL
     */
    public List<Booking> getBookingL() {
        return bookingL;
    }

    /**
     * @param bookingL the bookingL to set
     */
    public void setBookingL(List<Booking> bookingL) {
        this.bookingL = bookingL;
    }
}
