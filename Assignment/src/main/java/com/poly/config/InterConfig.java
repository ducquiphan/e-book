package com.poly.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class InterConfig implements WebMvcConfigurer{
//	@Autowired AuthInterceptor authInterceptor;
//	
//	@Override
//	public void addInterceptors(InterceptorRegistry registry) {
//	
//		registry.addInterceptor(authInterceptor)
//		.addPathPatterns("/category/**","/mail/**","/product/**")
//		.excludePathPatterns("/product/search-name","/product/search-price");
//	}
}
