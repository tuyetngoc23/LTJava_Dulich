/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.repository;

import com.yn.pojo.Customer;
import com.yn.pojo.User;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetails;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
public interface UserRepository {

    List<Customer> getCustormer();
    boolean checkUsername(String username);
    void addUser(User user);
    void addUserNV(User user);
    List<User> getUsers(String username);
    User getUsersAuth();
}

