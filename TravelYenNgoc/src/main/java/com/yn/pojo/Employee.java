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
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Entity
@Table(name="employee")
@DiscriminatorValue("E")
public class Employee extends User implements Serializable{

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
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id")
    @MapsId
    private User idStaff;
    
    @OneToMany(mappedBy = "employee")
    @LazyCollection(LazyCollectionOption.FALSE)
    private List<TinTuc> tinTucs;
    
}
