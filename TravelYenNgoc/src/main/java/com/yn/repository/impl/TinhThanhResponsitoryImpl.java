package com.yn.repository.impl;

import com.yn.pojo.TinhThanh;
import com.yn.pojo.Tour;
import com.yn.pojo.User;
import com.yn.repository.TinhThanhReponsitory;
import com.yn.repository.TourRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ASUS
 */
@Repository
public class TinhThanhResponsitoryImpl implements TinhThanhReponsitory{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Override
    @Transactional
    public List<TinhThanh> getTinhThanh() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Tour> query = builder.createQuery(Tour.class);
        Root root = query.from(TinhThanh.class);
        query.select(root);
         Query q = session.createQuery("From TinhThanh");
        return q.getResultList();
    }

    @Override
    @Transactional
    public TinhThanh getbyId(int id) {
        return sessionFactory.getObject().getCurrentSession().get(TinhThanh.class,id);
    }
    
   
    
}
