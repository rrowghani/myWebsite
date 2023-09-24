package com.rezarowghani.cfg;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import javax.sql.DataSource;

@Configuration
@EnableWebMvc
@ComponentScan(value = {"com.rezarowghani.controllers", "com.rezarowghani.dao"})
@PropertySource("classpath:jdbc.properties")
public class AppConfig implements WebMvcConfigurer {

    static Environment env;

    public AppConfig(Environment env) {
        this.env = env;
    }

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/contactMe").setViewName("contactMe");
    }

    @Bean
    public InternalResourceViewResolver viewResolver() {
        InternalResourceViewResolver internalResourceViewResolver = new InternalResourceViewResolver();
        internalResourceViewResolver.setPrefix("/WEB-INF/pages/");
        internalResourceViewResolver.setSuffix(".jsp");
        return internalResourceViewResolver;
    }

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }
    @Bean
    public DataSource dataSource() {

        BasicDataSource basicDataSource = new BasicDataSource();
        basicDataSource.setDriverClassName(env.getProperty("jdbc.driver"));
        basicDataSource.setUrl(env.getProperty("jdbc.url"));
        basicDataSource.setUsername(env.getProperty("jdbc.user"));
        basicDataSource.setPassword(env.getProperty("jdbc.password"));

        basicDataSource.setInitialSize(10);
        basicDataSource.setMaxTotal(100);
        basicDataSource.setMaxWaitMillis(500);
        basicDataSource.setMaxIdle(50);
        basicDataSource.setMinIdle(2);
        return basicDataSource;
    }

    @Bean
    public JdbcTemplate jdbcTemplate(DataSource dataSource) {
        return new JdbcTemplate(dataSource);
    }
}