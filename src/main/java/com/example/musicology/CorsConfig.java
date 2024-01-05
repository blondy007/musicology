package com.example.musicology;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

@Configuration
public class CorsConfig {

    @Bean
    public CorsFilter corsFilter() {
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        CorsConfiguration config = new CorsConfiguration();

        // Permitir solicitudes desde el dominio de tu aplicación Firebase
        config.addAllowedOrigin("https://musicology-front.web.app");
        config.addAllowedOrigin("http://localhost:3000");

        // Puedes configurar otras opciones CORS según tus necesidades

        source.registerCorsConfiguration("/**", config);
        return new CorsFilter(source);
    }
}
