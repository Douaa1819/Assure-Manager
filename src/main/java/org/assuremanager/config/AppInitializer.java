package org.assuremanager.config;


import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "org.assuremanager")
@Import({WebConfig.class, JpaConfig.class})
public class AppInitializer {


}
