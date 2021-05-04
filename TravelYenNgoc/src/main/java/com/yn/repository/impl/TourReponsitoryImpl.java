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
    public List<Tour> findTour(int id) {
        return tinhThanhResponsitory.getbyId(id).getTours_den();
//        Session session = this.sessionFactory.getObject().getCurrentSession();
//        CriteriaBuilder builder = session.getCriteriaBuilder();
//        CriteriaQuery<Tour> query = builder.createQuery(Tour.class);
//        Root root = query.from(Tour.class);
//        query.select(root);
////chỗ đó truyền đúng hong, tên á tên thì đúng mà cái as khoogn đnsg nếu vậy phải dung đối tượng với nó lun
//        //mà sao truyền vô là một mã tỉnh thành thì sao khong qua tỉnh thành lấy list tour của nó hiện ra
//        // khóa one to many á 
//        //ko nghĩ tới luôn á :((
//        
//        Predicate p = builder.equal(root.get("diemDenID").as(TinhThanh.class), id);
//        query = query.where(p);//sợ chỗ này bị cái là cột diem den id là đối tượng nó lhoong ép kiểu về đc integer lấy chỗ này ko đúng nè , casdidunsg đúng ùi đang coi lại
//        Query q = session.createQuery(query);

        //return q.getResultList();//ủa, mà thầy khai báo chỗ đó là đối tượng mới đúng á
    }

}
