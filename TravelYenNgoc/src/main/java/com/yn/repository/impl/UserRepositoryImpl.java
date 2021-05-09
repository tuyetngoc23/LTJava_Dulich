/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.repository.impl;

import com.yn.pojo.Customer;
import com.yn.pojo.User;
import com.yn.repository.UserRepository;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.security.authentication.AbstractAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Repository
public class UserRepositoryImpl implements UserRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    @Transactional
    public List<Customer> getCustormer() {
//        Session session = this.sessionFactory.getObject().getCurrentSession();
//        Query query = session.createQuery("From User where userrole = 'Customer'");
//        //System.out.println(query.getResultList());
        return null;
    }

    @Override
    @Transactional
    public boolean checkUsername(String username) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query query = session.createQuery("from User where username=:username");
        query.setParameter("username", username);
        if (query.getResultList().size() == 0) {
            return false;
        }
        User user = (User) query.getResultList().get(0);
        if (user == null) {
            return false;
        } else {
            return true;
        }
    }

    @Override
    @Transactional
    public void addUser(User user) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        user.setPassWord(bCryptPasswordEncoder.encode(user.getPassWord()));
        user.setStatus(false);
        long millis = System.currentTimeMillis();
        java.sql.Date dateCreated = new java.sql.Date(millis);
        user.setJoin_date(dateCreated);
        user.setUserrole(User.Role.ROLE_CUSTORMER);
        session.save(user);
        // Commit dữ liệu
        Customer customer = new Customer();
        customer.setIdCus(user);
        session.save(customer);
    }

    @Override
    @Transactional
    public List<User> getUsers(String username) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<User> query = builder.createQuery(User.class);
        Root root = query.from(User.class);
        query.select(root);

        Predicate p = builder.equal(root.get("username").as(String.class), username.trim());
        query = query.where(p);

        Query q = session.createQuery(query);
        return q.getResultList();
    }

    @Override
    @Transactional
    public User getUsersAuth() {
        Authentication loggedInUser = SecurityContextHolder.getContext().getAuthentication();
        String username = loggedInUser.getName();
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<User> query = builder.createQuery(User.class);
        Root root = query.from(User.class);
        query.select(root);
        Predicate p = builder.equal(root.get("username").as(String.class), username.trim());
        query = query.where(p);
        Query q = session.createQuery(query);
        List<User> users = q.getResultList();
        User u = users.get(0);
        return u;
    }

    @Override
    @Transactional
    public void addUserNV(User user) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        user.setPassWord(bCryptPasswordEncoder.encode(user.getPassWord()));
        user.setStatus(false);
        long millis = System.currentTimeMillis();
        java.sql.Date dateCreated = new java.sql.Date(millis);
        user.setJoin_date(dateCreated);
        user.setUserrole(User.Role.ROLE_EMPLOYEE);
        session.save(user);
        Customer customer = new Customer();
        customer.setIdCus(user);
        session.save(customer);
    }

}
