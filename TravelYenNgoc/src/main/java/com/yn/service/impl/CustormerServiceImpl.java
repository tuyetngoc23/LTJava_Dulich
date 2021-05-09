/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.service.impl;



import com.yn.pojo.Customer;
import com.yn.pojo.Employee;
import com.yn.pojo.Tour;
import com.yn.repository.CustormerRepository;
import com.yn.repository.TourRepository;
import com.yn.service.CustormerSevice;
import com.yn.service.TourSevice;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ASUS
 */
@Service
public class CustormerServiceImpl implements CustormerSevice{
    
    @Autowired
    private CustormerRepository custormerRepository;

    @Override
    public List<Customer> getCustormers() {
         return this.custormerRepository.getCustormers();
    }

    @Override
    public List<Employee> getEmloEmployees() {
        return this.custormerRepository.getEmloEmployees();
    }

}
