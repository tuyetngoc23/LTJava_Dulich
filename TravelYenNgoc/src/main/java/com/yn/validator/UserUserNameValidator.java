/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.validator;

import com.yn.pojo.User;
import com.yn.service.UserService;
import javax.persistence.Query;
import javax.persistence.Transient;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author Admin
 */
@Component
public class UserUserNameValidator implements Validator {
       
    private UserService userService;
    
    @Override
    public boolean supports(Class<?> type) {
        return User.class.isAssignableFrom(User.class);
    }

    @Override
    public void validate(Object target, Errors errors) {
        User user = (User) target;
//        System.out.println();
//        if(this.userService.checkUsername(user.getUsername())) 
//            errors.rejectValue("username", "user.username.match");
    }
    
    
}
