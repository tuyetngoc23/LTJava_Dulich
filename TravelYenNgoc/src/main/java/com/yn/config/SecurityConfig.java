/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.config;

import com.yn.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 *
 * @author Admin
 */
//  extends WebSecurityConfigurerAdapter 
@Configuration
@EnableWebSecurity
@EnableTransactionManagement
@ComponentScan(basePackages = {
    "com.yn"
})
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserDetailsService userDetailsService;

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
        System.out.println(auth.userDetailsService(userDetailsService));
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.formLogin().loginPage("/login")
                .usernameParameter("username")
                .passwordParameter("passWord");

        http.formLogin().defaultSuccessUrl("/")
                .failureUrl("/login?error");
        http.logout().logoutSuccessUrl("/login");
        http.exceptionHandling()
                .accessDeniedPage("/login?accessDenied");
        http.authorizeRequests().antMatchers("/").permitAll()
                .antMatchers("/admin/quanlynhanvien/**")
                .access("hasAnyRole('" + User.Role.ROLE_ADMIN.name() + "','" + User.Role.ROLE_EMPLOYEE.name() + "')")
                .antMatchers("/admin/quanlytour/**")
                .access("hasAnyRole('" + User.Role.ROLE_ADMIN.name() + "','" + User.Role.ROLE_EMPLOYEE.name() + "')")
                .antMatchers("/admin/quanlytintuc/**")
                .access("hasAnyRole('" + User.Role.ROLE_ADMIN.name() + "','" + User.Role.ROLE_EMPLOYEE.name() + "')")
                .antMatchers("/admin/quanlybooking")
                .access("hasAnyRole('" + User.Role.ROLE_ADMIN.name() + "','" + User.Role.ROLE_EMPLOYEE.name() + "')")
                .antMatchers("/admin")
                .access("hasAnyRole('" + User.Role.ROLE_ADMIN.name() + "','" + User.Role.ROLE_EMPLOYEE.name() + "')")
                 .antMatchers("/admin/quanlykhachhang")
                .access("hasAnyRole('" + User.Role.ROLE_ADMIN.name() + "','" + User.Role.ROLE_EMPLOYEE.name() + "')")
                .antMatchers("/admin/chart").access("hasAnyRole('" + User.Role.ROLE_ADMIN.name() + "')")
                .antMatchers("/booking/**").access("hasAnyRole('" + User.Role.ROLE_CUSTORMER.name() + "')")
                .antMatchers("/news/newsdetails/**").access("hasAnyRole('" + User.Role.ROLE_CUSTORMER.name() + "')");
        http.csrf().disable();
    }

}
