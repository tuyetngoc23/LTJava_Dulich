/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.Transient;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name = "tour")
public class Tour implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NotEmpty(message = "{tour.err.ten}")
    private String ten;
    @Min(value = 1999999, message = "{tour.err.gia}")
    @Max(value = 10000000, message = "{tour.err.gia}")
    private BigDecimal gia;
    @ManyToOne
    @JoinColumn(name = "diemDen_id")
    private TinhThanh diemDenID;
    @ManyToOne
    @JoinColumn(name = "diemDi_id")
    private TinhThanh diemDiID;//à
    @Min(value = 10, message = "{tour.err.gioihansoluong}")
    @Max(value = 100, message = "{tour.err.gioihansoluong}")
    private int gioiHanNDi;
    @Column(name = "ngayKetThuc")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date ngayKetThuc;
    @Column(name = "ngayKhoiHanh")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date ngayKhoiHanh;
    @ManyToOne
    @JoinColumn(name = "loaiTour_id")
    public LoaiTour loaiTourID;//tên mappBy là cái này nè
    @NotEmpty(message = "{tour.err.mota}")
    private String mota;
    private String image;
    @Transient
    private MultipartFile imgUploadFile;
    
    @Transient
    private long soNgay;
    
    @OneToMany(mappedBy = "tour")
    private List<Booking> bookingT;

    public MultipartFile getImgUploadFile() {
        return imgUploadFile;
    }

    public void setImgUploadFile(MultipartFile imgUploadFile) {
        this.imgUploadFile = imgUploadFile;
    }

    /**
     * @return the diemDenID
     */
    public TinhThanh getDiemDenID() {
        return diemDenID;
    }

    /**
     * @param diemDenID the diemDenID to set
     */
    public void setDiemDenID(TinhThanh diemDenID) {
        this.diemDenID = diemDenID;
    }

    /**
     * @return the diemDiID
     */
    public TinhThanh getDiemDiID() {
        return diemDiID;
    }

    /**
     * @param diemDiID the diemDiID to set
     */
    public void setDiemDiID(TinhThanh diemDiID) {
        this.diemDiID = diemDiID;
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
    /**
     * @return the gioiHanNDi
     */
    public int getGioiHanNDi() {
        return gioiHanNDi;
    }

    /**
     * @param gioiHanNDi the gioiHanNDi to set
     */
    public void setGioiHanNDi(int gioiHanNDi) {
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
    public LoaiTour getLoaiTourID() {
        return loaiTourID;
    }

    /**
     * @param loaiTour_id the loaiTour_id to set
     */
    public void setLoaiTourID(LoaiTour loaiTour_id) {
        this.loaiTourID = loaiTour_id;
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

    /**
     * @return the bookingT
     */
    public List<Booking> getBookingT() {
        return bookingT;
    }

    /**
     * @param bookingT the bookingT to set
     */
    public void setBookingT(List<Booking> bookingT) {
        this.bookingT = bookingT;
    }

    @Override
    public String toString() {
        return "Tour{tourid: "+this.id+", ten: "+ten+", gia: "+gia+"}"; //To change body of generated methods, choose Tools | Templates.
    }

    /**
     * @return the soNgay
     */
    public long getSoNgay() {
        return Math.round((this.ngayKetThuc.getTime() - this.ngayKhoiHanh.getTime()) / (double) 86400000);
    }

    /**
     * @param soNgay the soNgay to set
     */
    public void setSoNgay(long soNgay) {
        
        this.soNgay = soNgay;
    }
    
    

}
