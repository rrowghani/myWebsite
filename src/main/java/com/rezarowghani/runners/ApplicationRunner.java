package com.rezarowghani.runners;

import com.rezarowghani.cfg.AppConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRegistration;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

public class ApplicationRunner implements WebApplicationInitializer, WebMvcConfigurer {
    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        AnnotationConfigWebApplicationContext ctx;
        ctx = new AnnotationConfigWebApplicationContext();
        ctx.register(AppConfig.class);
        servletContext.setAttribute("imagesFolder", "./images/");
        ServletRegistration.Dynamic ds = servletContext.addServlet("ds", new DispatcherServlet(ctx));
        ds.addMapping("/");
        ds.setLoadOnStartup(1);
    }
}
