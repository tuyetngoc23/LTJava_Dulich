/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.config;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.Validator;

import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;

import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"com.yn.controller", "com.yn.repository", "com.yn.service"})
@EnableTransactionManagement
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void configureDefaultServletHandling(
            DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/css/**").addResourceLocations("/resource/css/");
        registry.addResourceHandler("/images/**").addResourceLocations("/resource/images/");
        registry.addResourceHandler("/js/**").addResourceLocations("/resource/js/");
        registry.addResourceHandler("/fonts/**").addResourceLocations("/resource/fonts/");
        registry.addResourceHandler("/admin/**").addResourceLocations("/resource/assets/");
        registry.addResourceHandler("/assets_ui/**").addResourceLocations("/resource/assets_ui/");
       // registry.addResourceHandler("/assets/**").addResourceLocations("/resource/assets_admin/");
    }

    @Bean
    public MessageSource messageSource() {
        ResourceBundleMessageSource resource
                = new ResourceBundleMessageSource();
        resource.setBasename("messagetour");
        return resource;
    }
    @Bean
    public LocalValidatorFactoryBean validator() {
        LocalValidatorFactoryBean bean = new LocalValidatorFactoryBean();
        bean.setValidationMessageSource(messageSource());
        
        return bean;
    }
    @Override
    public Validator getValidator() {
        return validator();
    }

//    @Bean
//    public InternalResourceViewResolver
//            getInternalResourceViewResolver() {
//        InternalResourceViewResolver resolver
//                = new InternalResourceViewResolver();
//        resolver.setViewClass(JstlView.class);
//        resolver.setPrefix("/WEB-INF/layout/");
//        resolver.setSuffix(".jsp");
//        return resolver;
//    }
    
    @Bean
    public CommonsMultipartResolver multipartResolver() {
     CommonsMultipartResolver resolver = new CommonsMultipartResolver();
     resolver.setDefaultEncoding("UTF-8");
     return resolver;
}

}
