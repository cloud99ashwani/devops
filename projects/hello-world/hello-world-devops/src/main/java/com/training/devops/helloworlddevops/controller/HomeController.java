package com.training.devops.helloworlddevops.controller;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.training.devops.helloworlddevops.model.ApplicationDetails;

@RestController
@RequestMapping(path = "/")
public class HomeController {
	
	String machinename= UUID.randomUUID().toString();
	
	@Value("${spring.application.name}")
	String applicationName;
	
	@Value("${server.port}")
	String port;
	
	@GetMapping
	public ApplicationDetails getHome() {
		String ip ="Oops";
		try {
			ip = InetAddress.getLocalHost().getHostAddress();
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ApplicationDetails(ip, port, applicationName, machinename);
	}
}
