/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.yn.config;

import java.util.Properties;
import javax.sql.DataSource;
import org.hibernate.cfg.AvailableSettings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@Configuration
@PropertySource("classPath:hibernate.properties")
public class HibernateConfig {
    @Autowired
    private Environment env;
    
    @Bean
    public LocalSessionFactoryBean getSessionFactory(){
        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
        sessionFactory.setDataSource(dataSource());
        sessionFactory.setHibernateProperties(getProps());
        sessionFactory.setPackagesToScan("com.yn.pojo");
        return sessionFactory;
    }
    
    @Bean
    public DataSource dataSource(){
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        
        dataSource.setDriverClassName(env.getProperty("hibernate.connection.driverClass"));
        dataSource.setUrl(env.getProperty("hibernate.connection.url"));
        dataSource.setUsername(env.getProperty("hibernate.connection.username"));
        dataSource.setPassword("hibernate.connection.password");
        
        return dataSource;
    }
    
    public Properties getProps(){
        Properties props = new Properties();
        
        props.setProperty(AvailableSettings.DIALECT, env.getProperty("hibernate.dialect"));
        props.setProperty(AvailableSettings.SHOW_SQL, env.getProperty("hibernate.showSql"));
        props.setProperty(AvailableSettings.ENABLE_LAZY_LOAD_NO_TRANS, "true");//này tác dụng là khi cần load lazy nó không cần dùng tới trans...
        
        
        return props;
    }
    
    @Bean
    public HibernateTransactionManager transactionManager(){
        HibernateTransactionManager trans = new HibernateTransactionManager();
        
        trans.setSessionFactory(this.getSessionFactory().getObject());
        
        return trans;
    }
}
