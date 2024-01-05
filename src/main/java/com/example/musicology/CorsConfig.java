package com.example.musicology;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

//@Configuration
//public class CorsConfig {

//    @Bean
//    public CorsFilter corsFilter() {
//        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
//        CorsConfiguration config = new CorsConfiguration();
//
//        // Específicamente permitir solicitudes desde estos orígenes
//        config.addAllowedOrigin("http://localhost:3000");
//        config.addAllowedOrigin("https://musicology-front.web.app");
//        config.addAllowedOrigin("https://musicology-front.firebaseapp.com");
//
//        // Permitir que se envíen cualquier tipo de encabezado
//        config.addAllowedHeader("*");
//
//        // Permitir que se realicen cualquier tipo de método (GET, POST, etc.)
//        config.addAllowedMethod("*");
//
//        // Permitir el envío de cookies junto con la solicitud
//        config.setAllowCredentials(true);
//
//        // Configurar la fuente de configuración de CORS
//        source.registerCorsConfiguration("/**", config);
//
//        // Devolver el filtro CORS configurado
//        return new CorsFilter(source);
//    }

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
//}
