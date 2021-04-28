<<<<<<< HEAD
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.repository;

import com.yn.pojo.User;
import java.util.List;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
public interface UserRepository {
    List<User> getUsers(String username);
    boolean addUser(User user);
}
=======
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.repository;

import com.yn.pojo.User;
import java.util.List;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
public interface UserRepository {
    List<User> getUser();
}
>>>>>>> 4c5e558626ea145526fbee05c40b24e14123b559
