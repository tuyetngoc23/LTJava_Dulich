/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.service.impl;

import com.yn.pojo.Customer;
import com.yn.pojo.TinTuc;
import com.yn.pojo.User;
import com.yn.repository.TinTucRepository;
import com.yn.repository.TourRepository;
import com.yn.repository.UserRepository;
import com.yn.service.TinTucService;
import com.yn.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Service
public class TinTucServiceImpl implements TinTucService {
    @Autowired
    private TinTucRepository tintTucRepository;

    @Override
    public List<TinTuc> getTinTucs() {
       return this.tintTucRepository.getTinTucs();
    }

}

