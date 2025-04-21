package com.springsecurity.controllers;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class HelloWorldController {
	
	
//	@GetMapping("/logout")
//	public String logout() {
//		return "logout";
//	}
	
	@GetMapping("/helloWorld")
	public String helloWorld() {
		return "hello-world";
	}
	
	@GetMapping("/register")
	public String register() {
		System.out.println("inside register Controller..");
		return "register";
	}
	
	@GetMapping("/index")
	public String index() {
		System.out.println("inside index Controller..");
		return "index";
	}
	
	@ResponseBody
	@GetMapping("/hello")
	public String hello() {
		return "Hello from Rohit";
	}
	
	@ResponseBody
	@GetMapping("/bye")
	public String bye() {
		return "Bye from Rohit";
	}

}
