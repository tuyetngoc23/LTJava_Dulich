/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.repository.impl;

import com.yn.pojo.BinhLuan;
import com.yn.pojo.Customer;
import com.yn.pojo.Employee;
import com.yn.pojo.Thich;
import com.yn.pojo.TinTuc;
import com.yn.pojo.User;
import com.yn.repository.TinTucRepository;

import com.yn.service.UserService;

import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
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
public class TinTucRepositoryImpl implements TinTucRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Autowired
    private UserService userService;

    @Override
    @Transactional
    public List<TinTuc> getTinTucs(String kw) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<TinTuc> query = builder.createQuery(TinTuc.class);
        Root root = query.from(TinTuc.class);
        query.select(root);
        Predicate p = builder.like(root.get("moTaNgan").as(String.class),
                String.format("%%%s%%", kw));
        query = query.where(p);
        Query q = session.createQuery(query);
        return q.getResultList();
    }

    @Override
    @Transactional
    public boolean addOrUpdateTour(TinTuc tinTuc) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        if (tinTuc.getId() > 0) {
            s.update(tinTuc);
            return true;
        } else {

            long millis = System.currentTimeMillis();
            java.sql.Date dateCreated = new java.sql.Date(millis);
            tinTuc.setNgayDang(dateCreated);
            Employee ePost = new Employee();
            User ua = this.userService.getUsersAuth();
            ePost = s.get(Employee.class, ua.getId());
            tinTuc.setEmployee(ePost);
            s.save(tinTuc);
            return true;
        }

    }

    @Override
    @Transactional
    public TinTuc getTinTucById(int i) {
        return this.sessionFactory.getObject().getCurrentSession().get(TinTuc.class, i);
    }

    @Override
    @Transactional
    public boolean deleteTinTuc(int tintucId) {

        try {
            Session session = this.sessionFactory.getObject().getCurrentSession();
            TinTuc p = session.get(TinTuc.class, tintucId);
            p.setTrangThai(false);
            session.update(p);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    @Transactional
    public List<BinhLuan> getBinhLuans(int i) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("From BinhLuan where tintuc_id = :tintuc");
        q.setParameter("tintuc", i);
        return q.getResultList();

    }

    @Override
    @Transactional
    public void addBinhLuan(BinhLuan binhLuan) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        long millis = System.currentTimeMillis();
        java.sql.Date dateCreated = new java.sql.Date(millis);
        binhLuan.setNgayBinhLuan(dateCreated);
        Customer cus = new Customer();
        User ua = this.userService.getUsersAuth();
        cus = s.get(Customer.class, ua.getId());
        System.out.println(cus);
        binhLuan.setCustomerId(cus);
        s.save(binhLuan);
    }

    @Override
    @Transactional
    public void addthich(int id) {
         Session s = this.sessionFactory.getObject().getCurrentSession();
         Thich thich = new Thich();
         Customer cus = new Customer();
        User ua = this.userService.getUsersAuth();
        cus = s.get(Customer.class, ua.getId());
        System.out.println(cus);
        thich.setCustomerIdThich(cus);
        thich.setTintucIdThich(this.getTinTucById(id));
        thich.setTrangThai(true);
        TinTuc tinTuc = this.getTinTucById(id);
        int sl = tinTuc.getSoLuotThich();
        tinTuc.setSoLuotThich(sl+1);
        s.save(thich);
        s.update(tinTuc);
        
    }

    @Override
    @Transactional
    public Thich getthich(int i) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Customer cus = new Customer();
        User ua = this.userService.getUsersAuth();
        cus = session.get(Customer.class, ua.getId());
        Query q = session.createQuery(" FROM Thich where tintuc_id = :tintucid and customerId = :cusId");
        q.setParameter("tintucid", i);
        q.setParameter("cusId", cus.getIdCus().getId());
        if(q.getResultList().get(0)== null)
            return null;
        return (Thich)q.getResultList().get(0);
    }

}
