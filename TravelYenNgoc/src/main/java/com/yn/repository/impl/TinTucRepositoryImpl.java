/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.repository.impl;


import com.yn.pojo.Customer;
import com.yn.pojo.TinTuc;
import com.yn.pojo.TinhThanh;
import com.yn.pojo.Tour;
import com.yn.pojo.User;
import com.yn.repository.TinTucRepository;
import com.yn.repository.UserRepository;
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
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Repository
public class TinTucRepositoryImpl implements TinTucRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    @Transactional
    public List<TinTuc> getTinTucs(String kw) {
//        Session session = this.sessionFactory.getObject().getCurrentSession();
//        CriteriaBuilder builder = session.getCriteriaBuilder();
//        CriteriaQuery<TinTuc> query = builder.createQuery(TinTuc.class);
//        Root root = query.from(TinTuc.class);
//        query.select(root);
//        Predicate p = builder.like(root.get("moTaNgan").as(String.class),
//                    String.format("%%%s%%", kw));
//        query = query.where(p);
//        Query q = session.createQuery(query);
//        

        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query query = session.createQuery("From TinTuc where trangThai = 'false'");
        System.out.println(query.getResultList());
        return query.getResultList();
    }

    @Override
    @Transactional
    public boolean addOrUpdateTour(TinTuc tinTuc) {
       Session s = this.sessionFactory.getObject().getCurrentSession();
        try {
            System.out.println(tinTuc.getId());
            if (tinTuc.getId() > 0) {
                s.update(tinTuc);
            } else {
                s.save(tinTuc);
            }
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }

        return false;
    }

    @Override
    @Transactional
    public TinTuc getTinTucById(int i) {
        return this.sessionFactory.getObject().getCurrentSession().get(TinTuc.class, i);
    }

    @Override
    @Transactional
    public boolean deleteTinTuc(int tintucId) {
        System.out.println("sao vậy");
        try {
            Session session = this.sessionFactory.getObject().getCurrentSession();
            TinTuc p = session.get(TinTuc.class, tintucId);
            p.setTrangThai(true);
            session.update(p);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }
        return false;
    }
}

