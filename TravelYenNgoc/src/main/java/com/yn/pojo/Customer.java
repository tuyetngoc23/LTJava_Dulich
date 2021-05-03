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
import javax.persistence.MapsId;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Transient;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Entity
@Table(name = "Customer")
public class Customer  implements Serializable{

    /**
     * @return the binhLuans
     */
    public List<BinhLuan> getBinhLuans() {
        return binhLuans;
    }

    /**
     * @param binhLuans the binhLuans to set
     */
    public void setBinhLuans(List<BinhLuan> binhLuans) {
        this.binhLuans = binhLuans;
    }

    /**
     * @return the thichs
     */
    public List<Thich> getThichs() {
        return thichs;
    }

    /**
     * @param thichs the thichs to set
     */
    public void setThichs(List<Thich> thichs) {
        this.thichs = thichs;
    }



    
    @OneToMany(mappedBy = "customerId")
    private List<BinhLuan> binhLuans;
    
    @OneToMany(mappedBy = "customerIdThich")
    private List<Thich> thichs;

    @Id
    private int id;
    @OneToOne
    @JoinColumn(name = "id")
    @MapsId
    private User idCus;
    
    
//    @OneToOne(mappedBy = "idCus")
//    @PrimaryKeyJoinColumn
//    private User user;
     

}
