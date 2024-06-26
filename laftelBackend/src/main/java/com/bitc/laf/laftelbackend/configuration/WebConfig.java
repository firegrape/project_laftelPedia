package com.bitc.laf.laftelbackend.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                .allowedOrigins("http://localhost:8088") // Specific origin
                .allowedMethods("GET", "POST", "PUT", "DELETE", "PATCH", "HEAD")
                .allowedHeaders("*")
                .allowCredentials(true);
    }
}