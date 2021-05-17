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
import java.util.ArrayList;
import java.util.HashSet;

import java.util.List;
import java.util.Set;
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
        Set<BinhLuan> binhLuan = new HashSet<>();
        binhLuan.addAll(this.getTinTucById(i).getBinhLuans());
        List<BinhLuan> b = new ArrayList<>();
        b.addAll(binhLuan);
        return b;

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
        thich.setTrangThai(false);
        s.save(thich);

        
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
        Thich thich = new Thich();
      if(q.getResultList().isEmpty()){
          addthich(i);
          thich = this.getthich(i);
        }
        else{ thich = (Thich)q.getResultList().get(0);}
        return thich;
    }

    @Override
    @Transactional
    public void khongthich(int i, int i1) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Thich thich = session.get(Thich.class, i1);
        thich.setTrangThai(false);
        TinTuc tinTuc = this.getTinTucById(i);
        int sl = tinTuc.getSoLuotThich();
        tinTuc.setSoLuotThich(sl-1);
        session.save(thich);
        session.update(tinTuc);
    }


    @Override
    @Transactional
    public void thich(int i, int i1) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Thich thich = session.get(Thich.class, i1);
        thich.setTrangThai(true);
        TinTuc tinTuc = this.getTinTucById(i);
        int sl = tinTuc.getSoLuotThich();
        tinTuc.setSoLuotThich(sl+1);
        session.save(thich);
        session.update(tinTuc);
    }


    @Override
    @Transactional
    public TinTuc UpdateSoLuotThich(int i) {
        TinTuc t = new TinTuc();
        t.setSoLuotThich(i);
        return t;
    }
}