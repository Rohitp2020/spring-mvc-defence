package com.springsecurity.postController;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springsecurity.db.DefenceDBUtil;
import com.springsecurity.defence.Aspirant;
import com.springsecurity.defence.MyUserDetailsService;
import com.springsecurity.defence.UserEntity;
import com.springsecurity.defence.UserRepository;

@Controller
public class AspirantPost {
	
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

}
