/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.pojo;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;



@Entity
@Table(name="employee")
public class Employee implements Serializable{

    /**
     * @return the tinTucs
     */
    public List<TinTuc> getTinTucs() {
        return tinTucs;
    }

    /**
     * @param tinTucs the tinTucs to set
     */
    public void setTinTucs(List<TinTuc> tinTucs) {
        this.tinTucs = tinTucs;
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
     * @return the idStaff
     */
   
    public User getIdStaff() {
        return idStaff;
    }

    /**
     * @param idStaff the idStaff to set
     */
    public void setIdStaff(User idStaff) {
        this.idStaff = idStaff;
    }
 

    @Id
    private int id;
    @OneToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name = "id")
    @MapsId
    private User idStaff;
    
    @OneToMany(mappedBy = "employee")
    private List<TinTuc> tinTucs;
    
    @OneToMany(mappedBy = "employeeId")
    private List<Booking> bookingE;

    /**
     * @return the bookingE
     */
    public List<Booking> getBookingE() {
        return bookingE;
    }

    /**
     * @param bookingE the bookingE to set
     */
    public void setBookingE(List<Booking> bookingE) {
        this.bookingE = bookingE;
    }
    
}
