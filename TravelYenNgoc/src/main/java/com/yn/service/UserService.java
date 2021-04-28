<<<<<<< HEAD
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.service;

import com.yn.pojo.User;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
public interface UserService extends UserDetailsService{
    boolean addUser(User user);
    List<User> getUsers(String username);
}
=======
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.service;

import com.yn.pojo.User;
import java.util.List;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
public interface UserService {
    List<User> getUser();
}
>>>>>>> 4c5e558626ea145526fbee05c40b24e14123b559
