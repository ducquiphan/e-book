/**
 * 
 */
package com.poly;

import java.time.Duration;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.web.client.RestTemplate;


/**
 * 
 */
@SpringBootApplication
@EnableScheduling
public class AssignmentApplication {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SpringApplication.run(AssignmentApplication.class, args);
		
		// Send request
		String url = "http://localhost:8090/home";
		
	}
	
	

}
