/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.repository.impl;

import com.yn.pojo.Customer;
import com.yn.pojo.User;
import com.yn.repository.UserRepository;
import java.util.List;
import javax.persistence.Query;
import org.apache.commons.codec.digest.DigestUtils;
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
public class UserRepositoryImpl implements UserRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

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
        if(query.getResultList().size()==0)
            return false;
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
        user.setPassWord(DigestUtils.sha256Hex(user.getPassWord()));
        user.setStatus(false);
        long millis = System.currentTimeMillis();
        java.sql.Date dateCreated = new java.sql.Date(millis);
        user.setJoin_date(dateCreated);
        user.setUserrole(User.Role.Customer);
        session.save(user);
    }
}
