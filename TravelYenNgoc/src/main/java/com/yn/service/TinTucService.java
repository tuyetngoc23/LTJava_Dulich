/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.service;

import com.yn.pojo.Customer;
import com.yn.pojo.TinTuc;
import com.yn.pojo.User;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
public interface TinTucService {

    
    List<TinTuc> getTinTucs();
}

