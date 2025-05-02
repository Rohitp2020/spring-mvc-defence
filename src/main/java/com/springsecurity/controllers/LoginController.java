package com.springsecurity.controllers;

import java.sql.SQLException;
import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.springsecurity.db.DefenceDBUtil;
import com.springsecurity.postController.LoginPost;

@Controller
public class LoginController {
	
	@GetMapping("/")
    public String redirectToLogin() {
        //return "redirect:/myCustomLogin";
        return "redirect:/home";
    }
	
	@GetMapping("/myCustomLogin")
	public String myCustomLogin() {
		return "login";
	}
	
	@GetMapping("/eligible")
	public String eligible() {
		return "redirect:/home";
	}
	
//	@PostMapping("/process-defence")
//	public String enteredLogin(@RequestParam String username,@RequestParam String password, Model model) throws SQLException,NullPointerException, ClassNotFoundException{
//		System.out.println("enteredLogin hit");
//		HashMap<String, String> entered = new HashMap<>();
//		String flag = "N";
//		entered.put("EMAIL", username);
//		entered.put("PASS", password);
//		
//		System.out.println("This is logg: "+entered);
//		
//		HashMap<String, String> aspirant = DefenceDBUtil.selectAspirant(entered);
//		if(aspirant.get("email") != null || aspirant.get("pass") != null) {
//			//model.addAttribute("successFlag", "Y");
//			//new LoginPost(aspirant.get("email"),aspirant.get("pass"));
//			return "login";
//		}
//		model.addAttribute("successFlag", flag);
//		return "register";
//	}
		

}
