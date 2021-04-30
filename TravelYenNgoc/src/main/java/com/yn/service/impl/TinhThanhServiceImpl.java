/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.service.impl;

import com.yn.pojo.TinhThanh;
import com.yn.pojo.Tour;
import com.yn.repository.TinhThanhReponsitory;
import com.yn.repository.TourRepository;
import com.yn.service.TinhThanhService;
import com.yn.service.TourSevice;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ASUS
 */
@Service
public class TinhThanhServiceImpl implements TinhThanhService{
    @Autowired
    private TinhThanhReponsitory tinhThanhReponsitory;
    @Override
    public List<TinhThanh> getTinhThanh() {
         return this.tinhThanhReponsitory.getTinhThanh();
    }
    
}
