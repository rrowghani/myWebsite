package com.rezarowghani.runners;

import com.rezarowghani.cfg.AppConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRegistration;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import java.io.IOException;
import java.util.Map;
import java.util.Properties;
import java.util.TreeMap;

public class ApplicationRunner implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        AnnotationConfigWebApplicationContext ctx;
        ctx = new AnnotationConfigWebApplicationContext();
        ctx.register(AppConfig.class);
        Properties prop = new Properties();

        try {
            servletContext.setAttribute("countryCodes", loadCountryCodes(prop));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        servletContext.setAttribute("imagesFolder", "./images/");
        ServletRegistration.Dynamic ds = servletContext.addServlet("ds", new DispatcherServlet(ctx));
        ds.addMapping("/");
        ds.setLoadOnStartup(1);
    }

    private Map<String, String> loadCountryCodes(Properties prop) throws IOException {

        Map<String, String> countryCodes = new TreeMap<>();
        // load a properties file
        prop.load(ApplicationRunner.class.getResourceAsStream("/countryCodes.properties")); // note the leading /
        prop.keySet().forEach((countryName) ->
        {
            countryCodes.put((String) countryName, prop.getProperty((String) countryName));
        });

        return countryCodes;
    }
}
