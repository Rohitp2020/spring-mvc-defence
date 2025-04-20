package com.springsecurity.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController   // use '@RestController' only when you want to return reponse but not jsp pages.
public class MyRestControllers {
	
	@GetMapping("/greet/{yourName}")
	public String greet(@PathVariable("yourName") String yourName) {
		return "Good Morning " + yourName;
	}

}
