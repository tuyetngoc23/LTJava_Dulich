/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.repository;

import com.yn.pojo.Customer;
import com.yn.pojo.Employee;
import java.util.List;

/**
 *
 * @author ASUS
 */
public interface CustormerRepository {
    List<Customer> getCustormers();
    List<Employee> getEmloEmployees();
   
}
