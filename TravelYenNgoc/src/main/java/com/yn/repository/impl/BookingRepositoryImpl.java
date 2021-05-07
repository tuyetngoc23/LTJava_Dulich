/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.repository.impl;

import com.yn.pojo.Booking;
import com.yn.pojo.Tour;
import com.yn.repository.BookingRepository;
import java.math.BigDecimal;
import java.time.LocalDate;
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
public class BookingRepositoryImpl implements BookingRepository{
    
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    @Transactional
    public void addBooking(Booking b) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        LocalDate d = LocalDate.now();
        b.setBookingDay(d);
        s.save(b);
    }

    @Override
    @Transactional
    public BigDecimal getDoanhThu(int thang, int nam) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("SELECT sum(totalMoney) FROM Booking where month(bookingDay) = :thang and year(bookingDay) = :nam");
        q.setParameter("thang", thang);
        q.setParameter("nam", nam);
        //(BigDecimal) q.getResultList().get(0)
        return (BigDecimal) q.getResultList().get(0);
    }

    @Override
    @Transactional
    public BigDecimal getPrice(Tour t, Booking b) {
        return t.getGia().multiply(new BigDecimal(b.getSoNguoiLonDi()))
                .add(t.getGia().multiply(new BigDecimal(b.getSoNguoiNhoDi())).multiply(new BigDecimal(0.5)));
    }
    
}
