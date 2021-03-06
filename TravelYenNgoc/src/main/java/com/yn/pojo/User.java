/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.pojo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.Transient;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Entity
@Table(name="user")

public class User implements Serializable{

    /**
     * @return the customer
     */
    public Customer getCustomer() {
        return customer;
    }

    /**
     * @param customer the customer to set
     */
    public void setCustomer(Customer customer) {
        this.customer = customer;
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

     /**
     * @return the confirmPassword
     */
    public String getConfirmPassword() {
        return confirmPassword;
    }

    /**
     * @param confirmPassword the confirmPassword to set
     */
    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    /**
     * @return the userrole
     */
    public Role getUserrole() {
        return userrole;
    }

    /**
     * @param userrole the userrole to set
     */
    public void setUserrole(Role userrole) {
        this.userrole = userrole;
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
     * @return the status
     */
    public Boolean getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(Boolean status) {
        this.status = status;
    }

    /**
     * @return the passWord
     */
    public String getPassWord() {
        return password;
    }

    /**
     * @param passWord the passWord to set
     */
    public void setPassWord(String passWord) {
        this.password = passWord;
    }

    /**
     * @return the join_date
     */
    public Date getJoin_date() {
        return join_date;
    }

    /**
     * @param join_date the join_date to set
     */
    public void setJoin_date(Date join_date) {
        this.join_date = join_date;
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
     * @return the ngaySinh
     */
    public Date getNgaySinh() {
        return ngaySinh;
    }

    /**
     * @param ngaySinh the ngaySinh to set
     */
    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the avatar
     */
    public String getAvatar() {
        return avatar;
    }

    /**
     * @param avatar the avatar to set
     */
    public void setAvatar(String avatar) {
        this.avatar = avatar;
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
     * @return the hoTen
     */
    public String getHoTen() {
        return hoTen;
    }

    /**
     * @param hoTen the hoTen to set
     */
    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

//    /**
//     * @return the userrole
//     */
//    public Role getUserrole() {
//        return userrole;
//    }
//
//    /**
//     * @param userrole the userrole to set
//     */
//    public void setUserrole(Role userrole) {
//        this.userrole = userrole;
//    }

    /**
     * @return the gioiTinh
     */
    public Boolean getGioiTinh() {
        return gioiTinh;
    }

    /**
     * @param gioiTinh the gioiTinh to set
     */
    public void setGioiTinh(Boolean gioiTinh) {
        this.gioiTinh = gioiTinh;
    }
    public static enum Role {
        ROLE_EMPLOYEE,
        ROLE_CUSTORMER,
        ROLE_ADMIN,
    }
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private Boolean status;
    @Column(name = "passWord")
    private String password;
    @Column(name = "join_date")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date join_date;
    @Pattern(regexp = "\\d{10}",
    message = "{user.phone.error.invalidMsg}")
    private String sdt;
    @Column(name = "ngaySinh")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date ngaySinh;
    @Size(min = 1, max = 45, message = "{user.username.sizeMsg}")
    private String username;
    private String avatar;
    @NotEmpty(message = "{user.diachi.err}")
    private String diaChi;
    @NotEmpty(message = "{user.hoten.err}")
    private String hoTen;
    @Enumerated(EnumType.STRING)
    private Role userrole;
    private Boolean gioiTinh;
    @Transient
    private String confirmPassword;

    @OneToOne(mappedBy = "idCus",cascade = CascadeType.ALL)
    @PrimaryKeyJoinColumn
    private Customer customer;

    @OneToOne(mappedBy = "idStaff",cascade = CascadeType.ALL)
    @PrimaryKeyJoinColumn
    private Employee employee;
}