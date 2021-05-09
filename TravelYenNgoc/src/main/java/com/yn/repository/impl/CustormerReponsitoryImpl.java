/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.repository.impl;

import com.yn.pojo.Customer;
import com.yn.pojo.Employee;
import com.yn.pojo.Tour;
import com.yn.repository.CustormerRepository;
import com.yn.repository.TinhThanhReponsitory;
import com.yn.repository.TourRepository;
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
public class CustormerReponsitoryImpl implements CustormerRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    @Transactional
    public List<Customer> getCustormers() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("From Customer");
        return q.getResultList();
    }

    @Override
    @Transactional
    public List<Employee> getEmloEmployees() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("From Employee");
        return q.getResultList();
    }

}
