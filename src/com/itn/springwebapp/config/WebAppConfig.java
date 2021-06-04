package com.itn.springwebapp.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages="com.itn.springwebapp")
public class WebAppConfig implements WebMvcConfigurer{
	
	@Bean
	public ViewResolver getViewResolver() {
		InternalResourceViewResolver vr = new InternalResourceViewResolver();   
		vr.setPrefix("/WEB-INF/views/");
		vr.setSuffix(".jsp");
		return vr;
	}
	
	
	@Override
	public  void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/assets/**")
				.addResourceLocations("/assets/")
				.setCachePeriod(3600);
		
		registry.addResourceHandler("/rescs/**")
			.addResourceLocations("/resources/")
			.setCachePeriod(3600);
		
	}
	
	 @Bean
	 public CommonsMultipartResolver multipartResolver(){
	     CommonsMultipartResolver mr = new CommonsMultipartResolver();
	     mr.setMaxUploadSize(120000000L);
	
	     return mr;
	    
	 }
	 
	 

}
