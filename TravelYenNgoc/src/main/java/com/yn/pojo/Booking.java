/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import org.hibernate.validator.constraints.Length;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Entity
@Table(name="booking")
public class Booking implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private Date bookingDay;
    private BigDecimal totalMoney;
    private int soNguoiLonDi;
    private int soNguoiNhoDi;
    private String tenKH;
    @Pattern(regexp = "[0-9]{10}", message = "{booking.sdt.err}")
    private String sdt;
    
    @ManyToOne
    @JoinColumn(name="customer_id")
    private Customer customerId;
    
    @ManyToOne
    @JoinColumn(name="employee_id")
    private Employee employeeId;
    
    @ManyToOne
    @JoinColumn(name="tour_id")
    private Tour tourId;

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
     * @return the bookingDay
     */
    public Date getBookingDay() {
        return bookingDay;
    }

    /**
     * @param bookingDay the bookingDay to set
     */
    public void setBookingDay(Date bookingDay) {
        this.bookingDay = bookingDay;
    }

    /**
     * @return the totalMoney
     */
    public BigDecimal getTotalMoney() {
        return totalMoney;
    }

    /**
     * @param totalMoney the totalMoney to set
     */
    public void setTotalMoney(BigDecimal totalMoney) {
        this.totalMoney = totalMoney;
    }

    /**
     * @return the soNguoiLonDi
     */
    public int getSoNguoiLonDi() {
        return soNguoiLonDi;
    }

    /**
     * @param soNguoiLonDi the soNguoiLonDi to set
     */
    public void setSoNguoiLonDi(int soNguoiLonDi) {
        this.soNguoiLonDi = soNguoiLonDi;
    }

    /**
     * @return the soNguoiNhoDi
     */
    public int getSoNguoiNhoDi() {
        return soNguoiNhoDi;
    }

    /**
     * @param soNguoiNhoDi the soNguoiNhoDi to set
     */
    public void setSoNguoiNhoDi(int soNguoiNhoDi) {
        this.soNguoiNhoDi = soNguoiNhoDi;
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

    /**
     * @return the employeeId
     */
    public Employee getEmployeeId() {
        return employeeId;
    }

    /**
     * @param employeeId the employeeId to set
     */
    public void setEmployeeId(Employee employeeId) {
        this.employeeId = employeeId;
    }

    /**
     * @return the tourId
     */
    public Tour getTourId() {
        return tourId;
    }

    /**
     * @param tourId the tourId to set
     */
    public void setTourId(Tour tourId) {
        this.tourId = tourId;
    }

    /**
     * @return the tenKH
     */
    public String getTenKH() {
        return tenKH;
    }

    /**
     * @param tenKH the tenKH to set
     */
    public void setTenKH(String tenKH) {
        this.tenKH = tenKH;
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

    public void setBookingDay(LocalDate d) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
