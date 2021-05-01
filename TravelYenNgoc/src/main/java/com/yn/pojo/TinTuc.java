/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.pojo;

import java.io.Serializable;
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
 * @author Huynh Thi Tuyet Ngoc
 */
@Entity
@Table(name="tintuc")
public class TinTuc implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String moTaNgan;
    private String moTaDai;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date ngayDang;
    private boolean trangThai;
    private String anh;
    private int viewer;
    @ManyToOne
    @JoinColumn(name="emloyee_id")
    private Employee employee;

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
     * @return the moTaNgan
     */
    public String getMoTaNgan() {
        return moTaNgan;
    }

    /**
     * @param moTaNgan the moTaNgan to set
     */
    public void setMoTaNgan(String moTaNgan) {
        this.moTaNgan = moTaNgan;
    }

    /**
     * @return the moTaDai
     */
    public String getMoTaDai() {
        return moTaDai;
    }

    /**
     * @param moTaDai the moTaDai to set
     */
    public void setMoTaDai(String moTaDai) {
        this.moTaDai = moTaDai;
    }

    /**
     * @return the ngayDang
     */
    public Date getNgayDang() {
        return ngayDang;
    }

    /**
     * @param ngayDang the ngayDang to set
     */
    public void setNgayDang(Date ngayDang) {
        this.ngayDang = ngayDang;
    }

    /**
     * @return the trangThai
     */
    public boolean isTrangThai() {
        return trangThai;
    }

    /**
     * @param trangThai the trangThai to set
     */
    public void setTrangThai(boolean trangThai) {
        this.trangThai = trangThai;
    }

    /**
     * @return the anh
     */
    public String getAnh() {
        return anh;
    }

    /**
     * @param anh the anh to set
     */
    public void setAnh(String anh) {
        this.anh = anh;
    }

    /**
     * @return the viewer
     */
    public int getViewer() {
        return viewer;
    }

    /**
     * @param viewer the viewer to set
     */
    public void setViewer(int viewer) {
        this.viewer = viewer;
    }

    /**
     * @return the employee
     */
    public Employee getEmployee() {
        return employee;
    }

    /**
     * @param employee the employee to set
     */
    public void setEmployee(Employee employee) {
        this.employee = employee;
    }
}