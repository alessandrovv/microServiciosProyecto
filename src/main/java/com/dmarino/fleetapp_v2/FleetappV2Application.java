package com.dmarino.fleetapp_v2;

import com.dmarino.fleetapp_v2.security.models.SpringSecurityAuditorAware;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.ErrorPageFilter;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.data.domain.AuditorAware;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@EnableJpaAuditing(auditorAwareRef="auditorAware")
@SpringBootApplication
public class FleetappV2Application extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        //set register error pagefilter false
        setRegisterErrorPageFilter(false);

        builder.sources(FleetappV2Application.class);
        return builder;
    }
    
    @Bean
    public ErrorPageFilter errorPageFilter() {
        return new ErrorPageFilter();
    }
    
    @Bean
    public AuditorAware<String> auditorAware() {
        return new SpringSecurityAuditorAware();
    }

    public static void main(String[] args) {
        SpringApplication.run(FleetappV2Application.class, args);
    }

}
