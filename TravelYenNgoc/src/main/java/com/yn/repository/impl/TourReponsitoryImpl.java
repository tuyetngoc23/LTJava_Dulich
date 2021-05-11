/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.repository.impl;

import static com.sun.tools.javac.tree.TreeInfo.args;
import com.yn.pojo.TinTuc;
import com.yn.pojo.TinhThanh;
import com.yn.pojo.Tour;
import com.yn.pojo.User;
import com.yn.repository.TinhThanhReponsitory;
import com.yn.repository.TourRepository;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class TourReponsitoryImpl implements TourRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Autowired
    private TinhThanhReponsitory tinhThanhResponsitory;

    @Override
    @Transactional
    public List<Tour> getTour(String kw) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Tour> query = builder.createQuery(Tour.class);
        Root root = query.from(Tour.class);
        query.select(root);
        Predicate p = builder.like(root.get("ten").as(String.class),
                String.format("%%%s%%", kw));
        query = query.where(p);
        Query q = session.createQuery(query);

        return q.getResultList();

    }

    @Override
    @Transactional
    public boolean addOrUpdateTour(Tour tour) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        try {
            System.out.println(tour.getId());
            if (tour.getId() > 0) {
                s.update(tour);
            } else {
                s.save(tour);
            }

            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }

        return false;
    }

    @Override
    @Transactional
    public Tour getTourById(int tourId) {
        return this.sessionFactory.getObject().getCurrentSession().get(Tour.class, tourId);
    }

    @Override
    @Transactional
    public boolean deleteTour(int tourId) {
        try {
            Session session = this.sessionFactory.getObject().getCurrentSession();
            Tour p = session.get(Tour.class, tourId);
            session.delete(p);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    @Transactional
    public List<Tour> getTour() {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        Query q = session.createQuery("From Tour");
        return q.getResultList();
    }

    @Override
    @Transactional
    public List<Tour> findTour(int ditu, int diden, String ngaydiDate, String ngayve) {
        Date ngaydidate = null;
        Date ngayvedate = null;
        try {
            ngaydidate = new SimpleDateFormat("yyyy-MM-dd").parse(ngaydiDate);
            ngayvedate = new SimpleDateFormat("yyyy-MM-dd").parse(ngayve);
        } catch (ParseException ex) {
            Logger.getLogger(TourReponsitoryImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("FROM Tour where (diemDenID.id = :ditusql and "
                + "diemDiID.id= :didensql) or (ngayKhoiHanh = :ngaydisql and ngayKetThuc = :ngayvesql)");
        q.setParameter("ditusql", ditu);
        q.setParameter("didensql", diden);
        q.setParameter("ngaydisql", ngaydidate);
        q.setParameter("ngayvesql", ngayvedate);
        return q.getResultList();

    }

    @Override
    @Transactional
    public List<Tour> getTourBygias(BigDecimal bd, BigDecimal bd1) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("FROM Tour where gia >= :giatu and gia<= :giaden");          
        q.setParameter("giatu", bd);
        q.setParameter("giaden", bd1);
        return q.getResultList();

    }

}
