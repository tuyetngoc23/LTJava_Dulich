/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
public class DispatcherInit extends AbstractAnnotationConfigDispatcherServletInitializer{

    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[] {
            TilesConfig.class,
            HibernateConfig.class,
            SecurityConfig.class
        };
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{
            WebConfig.class
        }; 
    }

    @Override
    protected String[] getServletMappings() {
        return new String[] {"/"};
    }
    
}

