/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.repository.impl;

import com.yn.pojo.Booking;
import com.yn.pojo.Customer;
import com.yn.pojo.Employee;
import com.yn.pojo.TinTuc;
import com.yn.pojo.Tour;
import com.yn.pojo.User;
import com.yn.repository.BookingRepository;
import com.yn.service.UserService;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Repository
public class BookingRepositoryImpl implements BookingRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Autowired
    private UserService userService;
    
    
    @Override
    @Transactional
    public void addBooking(Booking b) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        long millis = System.currentTimeMillis();
        java.sql.Date dateCreated = new java.sql.Date(millis);
        b.setBookingDay(dateCreated);
        //set nguoi nao đat
        Customer cus = new Customer();
        User ua = this.userService.getUsersAuth();
        cus =  s.get(Customer.class, ua.getId());
        System.out.println(cus);
        b.setCustomerId(cus);
        s.save(b);
    }

    @Override
    @Transactional
    public BigDecimal getDoanhThu(int thang, int nam) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("SELECT sum(totalMoney) FROM Booking where month(bookingDay) = :thang and year(bookingDay) = :nam");
        q.setParameter("thang", thang);
        q.setParameter("nam", nam);
        return (BigDecimal) q.getResultList().get(0);
    }

    @Override
    @Transactional
    public Long getTourDaDat(int thang, int nam) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("SELECT COUNT(*) FROM Booking where month(bookingDay) = :thang and year(bookingDay) = :nam");
        q.setParameter("thang", thang);
        q.setParameter("nam", nam);
        return (Long) q.getResultList().get(0);
    }

    @Override
    @Transactional
    public BigDecimal getPrice(Tour t, Booking b) {
        return t.getGia().multiply(new BigDecimal(b.getSoNguoiLonDi()))
                .add(t.getGia().multiply(new BigDecimal(b.getSoNguoiNhoDi())).multiply(new BigDecimal(0.5)));
    }

    @Override
    @Transactional
    public Long getSoLuongTourDatDat(int i) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("SELECT sum(soNguoiLonDi) FROM Booking where tour_id =:idtour");
        q.setParameter("idtour", i);
        if(q.getResultList().get(0)== null)
            return new Long(0);
        Long tong1 = (Long) q.getResultList().get(0);
        Query q2 = session.createQuery("SELECT sum(soNguoiLonDi) FROM Booking where tour_id =:idtour");
        q2.setParameter("idtour", i);
        Long tong2 = (Long) q.getResultList().get(0);
        return tong1 + tong2;
    }

    @Override
    @Transactional
    public List<Booking> getBooking() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
         Query q = session.createQuery("FROM Booking");
         return q.getResultList();
    }

    @Override
    @Transactional
    public void nhantour(int tour) {
        //tim booking
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Booking booking= session.get(Booking.class, tour);
        Employee eloy = new Employee();
        User ua = this.userService.getUsersAuth();
        eloy =  session.get(Employee.class, ua.getId());
        booking.setNhanvien(eloy);
        session.update(booking);
    }

}
