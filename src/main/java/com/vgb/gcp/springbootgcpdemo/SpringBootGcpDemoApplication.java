package com.vgb.gcp.springbootgcpdemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class SpringBootGcpDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootGcpDemoApplication.class, args);
	}

	@RequestMapping("/")
	public String hi() {
		return "Hello Folks!!,.. i'm running on GCP with Java  " + System.getProperty("java.version");
	}
}
