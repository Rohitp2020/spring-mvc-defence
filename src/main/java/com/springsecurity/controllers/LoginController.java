package com.springsecurity.controllers;

import java.sql.SQLException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.springsecurity.defence.MyUserDetailsService;
import com.springsecurity.defence.UserEntity;

@Controller
public class LoginController {
	
	@GetMapping("/")
    public String redirectToLogin() {
        //return "redirect:/myCustomLogin";
        return "redirect:/home";
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
	
	@GetMapping("/home")
	public String home() {
		System.out.println("inside home Controller..");
		return "home";
	}
	
	@ResponseBody
	@GetMapping("/hello")
	public String hello() {
		return "Hello from World";
	}
	
	@GetMapping("/myCustomLogin")
	public String myCustomLogin() {
		return "login";
	}
	
	@Autowired
    private MyUserDetailsService myUserDetailsService;
	
	
	@PostMapping("/registerUser")
	public String registerUser(@RequestParam String name,@RequestParam String username,@RequestParam String password, Model model) throws SQLException,NullPointerException, ClassNotFoundException{
		
		
		System.out.println("registerUser hit");
		HashMap<String, String> registered = new HashMap<>();
		String flag = "N";
		registered.put("NAME", name);
		registered.put("EMAIL", username);
		registered.put("PASS", password);
		
		System.out.println("This is logg: "+registered);
		
		//int aspirant = DefenceDBUtil.insertAspirant(registered);
		UserEntity aspirant = myUserDetailsService.insertUser(registered);
		//System.out.println("This is inside Aspirant:::"+aspirant.getId());
		if(aspirant != null) {
			model.addAttribute("successFlag", "Y");
			return "redirect:/myCustomLogin";
		}
		model.addAttribute("successFlag", flag);
		return "/register";
		
	}
	
	@PostMapping("/eligible")
	public String eligible(@RequestParam String education,@RequestParam String branch,@RequestParam int age, Model model) throws SQLException,NullPointerException, ClassNotFoundException{
		System.out.println("Eligible");
		System.out.println("Education: "+education);
		System.out.println("Branch: "+branch);
		if(age>0) {
			if(education.equalsIgnoreCase("10th") || education.equalsIgnoreCase("12th")) {
				if(branch.equalsIgnoreCase("Army")) {
					return "armyAfter12th";
				}else if(branch.equalsIgnoreCase("AirForce")) {
					return "airforceAfter12th";
				}else {
					return "navyAfter12th";
				}
			}else {
				if(branch.equalsIgnoreCase("Army")) {
					return "armyAfterGraduation";
				}else if(branch.equalsIgnoreCase("AirForce")) {
					return "airforceAfterGraduation";
				}else {
					return "navyAfterGraduation";
				}
			}
		}
		model.addAttribute("successFlag", "N");
		return "index";
	}

}
