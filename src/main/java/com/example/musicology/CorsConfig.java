package com.example.musicology;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

@Configuration
public class CorsConfig {

    @Bean
    public CorsFilter corsFilter() {
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        CorsConfiguration config = new CorsConfiguration();

        config.addAllowedOrigin("http://localhost:3000");
        config.addAllowedOrigin("https://musicology-front.web.app/*");
        config.addAllowedOrigin("https://musicology-front.firebaseapp.com/*");
        config.addAllowedOrigin("*"); // O config.addAllowedOrigin("https://musicology-front.web.app");
        config.addAllowedHeader("*");
        config.addAllowedMethod("*");
        config.setAllowCredentials(true);

        source.registerCorsConfiguration("/**", config);
        return new CorsFilter(source);
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
