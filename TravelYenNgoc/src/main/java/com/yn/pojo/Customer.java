/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.pojo;

import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Entity
@Table(name = "customer")
@DiscriminatorValue("C")
public class Customer extends User implements Serializable{

    /**
     * @return the idCus
     */
    public User getIdCus() {
        return idCus;
    }

    /**
     * @param idCus the idCus to set
     */
    public void setIdCus(User idCus) {
        this.idCus = idCus;
    }
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id")
    @MapsId
    private User idCus;

}
