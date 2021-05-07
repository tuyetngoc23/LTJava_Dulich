/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.validator;

import com.yn.pojo.User;
import java.util.HashSet;
import java.util.Set;
import javax.validation.ConstraintViolation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author Admin
 */
@Component
public class WebAppValidator implements Validator {
    @Autowired
    private javax.validation.Validator beanValidator;
    private Set<Validator> springValidators = new HashSet<>();

    @Override
    public boolean supports(Class<?> type) {
        return User.class.isAssignableFrom(User.class);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Set<ConstraintViolation<Object>> b = this.beanValidator.validate(o);
        for (ConstraintViolation<Object> ov: b)
            errors.rejectValue(ov.getPropertyPath().toString(), 
                    ov.getMessageTemplate(), ov.getMessage());
        
        for (Validator v: this.springValidators)
            v.validate(o, errors);
    }

    /**
     * @param springValidators the springValidators to set
     */
    public void setSpringValidators(Set<Validator> springValidators) {
        this.springValidators = springValidators;
    }
    
}
