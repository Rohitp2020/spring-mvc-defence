package com.springsecurity.defence;

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
    
//    @Override
//    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
//        System.out.println("Inside userdetails");
//
//        if ("rohitpunetha2001@gmail.com".equals(email)) {
//            return User.builder()
//                    .username("rohitpunetha2001@gmail.com")
//                    .password("rohit")
//                    .roles("admin")
//                    .build();
//        }
//
//        throw new UsernameNotFoundException("User not found with email: " + email);
//    }
}

