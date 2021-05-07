/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.validator;

import com.yn.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author Admin
 */
@Component
public class UserPassValidator implements Validator {


    @Override
    public boolean supports(Class<?> type) {
        return User.class.isAssignableFrom(User.class);
    }

    @Override
    public void validate(Object target, Errors errors) {
        User user = (User) target;
        if (!user.getPassWord().equals(user.getConfirmPassword()))
            errors.rejectValue("passWord", "user.password.notmatch");
    }
    
    
}
