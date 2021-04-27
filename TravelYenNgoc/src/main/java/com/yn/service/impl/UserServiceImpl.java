/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.service.impl;

import com.yn.pojo.User;
import com.yn.repository.UserRepository;
import com.yn.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Service
public class UserServiceImpl implements  UserService{
    @Autowired
    private UserRepository userRepository;

    @Override
    public List<User> getUser() {
        return this.userRepository.getUser();
    }
    
}
