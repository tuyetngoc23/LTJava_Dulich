/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
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
@Table(name="tour")
public class Tour implements Serializable{

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
     * @return the gia
     */
    public BigDecimal getGia() {
        return gia;
    }

    /**
     * @param gia the gia to set
     */
    public void setGia(BigDecimal gia) {
        this.gia = gia;
    }

    /**
     * @return the diemDen_id
     */
    public int getDiemDen_id() {
        return diemDen_id;
    }

    /**
     * @param diemDen_id the diemDen_id to set
     */
    public void setDiemDen_id(int diemDen_id) {
        this.diemDen_id = diemDen_id;
    }

    /**
     * @return the diemDi_id
     */
    public TinhThanh getDiemDi_id() {
        return diemDi_id;
    }

    /**
     * @param diemDi_id the diemDi_id to set
     */
    public void setDiemDi_id(TinhThanh diemDi_id) {
        this.diemDi_id = diemDi_id;
    }

    /**
     * @return the gioiHanNDi
     */
    public TinhThanh getGioiHanNDi() {
        return gioiHanNDi;
    }

    /**
     * @param gioiHanNDi the gioiHanNDi to set
     */
    public void setGioiHanNDi(TinhThanh gioiHanNDi) {
        this.gioiHanNDi = gioiHanNDi;
    }

    /**
     * @return the ngayKetThuc
     */
    public Date getNgayKetThuc() {
        return ngayKetThuc;
    }

    /**
     * @param ngayKetThuc the ngayKetThuc to set
     */
    public void setNgayKetThuc(Date ngayKetThuc) {
        this.ngayKetThuc = ngayKetThuc;
    }

    /**
     * @return the ngayKhoiHanh
     */
    public Date getNgayKhoiHanh() {
        return ngayKhoiHanh;
    }

    /**
     * @param ngayKhoiHanh the ngayKhoiHanh to set
     */
    public void setNgayKhoiHanh(Date ngayKhoiHanh) {
        this.ngayKhoiHanh = ngayKhoiHanh;
    }

    /**
     * @return the loaiTour_id
     */
    public LoaiTour getLoaiTour_id() {
        return loaiTour_id;
    }

    /**
     * @param loaiTour_id the loaiTour_id to set
     */
    public void setLoaiTour_id(LoaiTour loaiTour_id) {
        this.loaiTour_id = loaiTour_id;
    }

    /**
     * @return the mota
     */
    public String getMota() {
        return mota;
    }

    /**
     * @param mota the mota to set
     */
    public void setMota(String mota) {
        this.mota = mota;
    }

    /**
     * @return the image
     */
    public String getImage() {
        return image;
    }

    /**
     * @param image the image to set
     */
    public void setImage(String image) {
        this.image = image;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String ten;
    private BigDecimal gia;
    @ManyToOne
    @JoinColumn(name = "diemDen_id")
    private int diemDen_id;
    @ManyToOne
    @JoinColumn(name = "diemDi_id")
    private TinhThanh diemDi_id;
    private TinhThanh gioiHanNDi;
    @Column(name = "ngayKetThuc")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date ngayKetThuc;
    @Column(name = "ngayKhoiHanh")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date ngayKhoiHanh;
    @ManyToOne
    @JoinColumn(name = "loaiTour_id")
    private LoaiTour loaiTour_id;
    private String mota;
    private String image;
}
