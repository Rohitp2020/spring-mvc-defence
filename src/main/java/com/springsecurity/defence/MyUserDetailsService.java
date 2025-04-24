package com.springsecurity.defence;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class MyUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepository userRepository; // Your JPA repo for user table

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
    	System.out.println("Inside userdetails email::"+ email);
    	
        UserEntity user = userRepository.findByEmail(email)
            .orElseThrow(() -> new UsernameNotFoundException("User not found with email: " + email));
        
        //System.out.println("Inside userdetails");
        System.out.println("User found: " + user.getEmail());

        return User.builder()
                .username(user.getEmail())
                .password(user.getPassword()) // should already be encoded in DB
                .roles("admin")        // customize if you store roles separately
                .build();
    }
    
    public UserEntity insertUser(HashMap<String, String> data) {
    	UserEntity newUser = new UserEntity();
    	newUser.setName(data.get("NAME"));
        newUser.setEmail(data.get("EMAIL"));
        newUser.setPassword(data.get("PASS")); // Make sure to encode it before saving
        newUser.setRole("admin");
        UserEntity saved = null;
        
        try {
        	saved = userRepository.save(newUser);
        }catch(Exception e) {
        	System.out.println("Your insertUser is in catch save: "+saved);
        	//e.printStackTrace();
        }
        
        //System.out.println("insertUser: "+saved.getId());
        return saved;
    }
    
}

