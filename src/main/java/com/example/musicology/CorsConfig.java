package com.example.musicology;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;


@Configuration
public class CorsConfig {

    @Bean
    public CorsConfigurationSource corsConfigurationSource() {
        CorsConfiguration configuration = new CorsConfiguration();
        configuration.applyPermitDefaultValues();

        // Específicamente permitir solicitudes desde estos orígenes
        configuration.addAllowedOrigin("http://localhost:3000");
        configuration.addAllowedOrigin("https://musicology-front.web.app");
        configuration.addAllowedOrigin("https://musicology-front.firebaseapp.com");

        // Permitir que se envíen cualquier tipo de encabezado
        configuration.addAllowedHeader("*");

        // Permitir que se realicen cualquier tipo de método (GET, POST, etc.)
        configuration.addAllowedMethod("*");

        // Permitir el envío de cookies junto con la solicitud
        //configuration.setAllowCredentials(true);

        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", configuration);

        return source;
    }

    // Agregar configuración específica para las solicitudes OPTIONS (preflight)
    @Bean
    public FilterRegistrationBean<CorsFilter> corsFilterRegistrationBean() {
        FilterRegistrationBean<CorsFilter> bean = new FilterRegistrationBean<>(new CorsFilter(corsConfigurationSource()));
        bean.setOrder(Ordered.HIGHEST_PRECEDENCE);
        return bean;
    }

//    @Bean
//    public CorsFilter corsFilter() {
//        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
//        CorsConfiguration config = new CorsConfiguration().applyPermitDefaultValues();
//
//        config.addAllowedOrigin("http://localhost:3000");
//        config.addAllowedOrigin("https://musicology-front.web.app");
//        config.addAllowedOrigin("https://musicology-front.firebaseapp.com");
//
//        source.registerCorsConfiguration("/**", config);
//        return new CorsFilter(source);
//    }
}
