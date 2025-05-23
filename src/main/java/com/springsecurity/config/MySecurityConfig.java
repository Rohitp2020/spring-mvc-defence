package com.springsecurity.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;

import com.springsecurity.ControllerClass.LoginPost;
import com.springsecurity.defence.MyUserDetailsService;

//this class helps to create the spring security filter change

@Configuration
@EnableWebSecurity
@EnableJpaRepositories(basePackages = "com.springsecurity.defence")
@ComponentScan(basePackages = "com.springsecurity")
public class MySecurityConfig extends WebSecurityConfigurerAdapter {

	@Bean
	 public PasswordEncoder passwordEncoder() {
		    return NoOpPasswordEncoder.getInstance();
	}
	 
	 @Autowired
	 private MyUserDetailsService myUserDetailsService;
	 
	 @Override
	 protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	     auth.userDetailsService(myUserDetailsService)
	         .passwordEncoder(passwordEncoder());
	     System.out.println("Configure");
	 }

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		//.csrf().disable()
		.authorizeRequests()
		.antMatchers("/hello").authenticated()
		.antMatchers("/bye").authenticated()
		.antMatchers("/register").permitAll()
		.antMatchers("/home").permitAll()
		.antMatchers("/index").authenticated()
		.antMatchers("/eligible").authenticated()
		.antMatchers("/navyAfterGraduation").authenticated()
		.antMatchers("/airforceAfterGraduation").authenticated()
		.antMatchers("/armyAfterGraduation").authenticated()
		.antMatchers("/navyAfter12th").authenticated()
		.antMatchers("/airforceAfter12th").authenticated()
		.antMatchers("/armyAfter12th").authenticated()
		.antMatchers("/helloWorld").permitAll()
		.antMatchers("/registerUser").permitAll()
		.antMatchers("/Images/**","/Images1/**","/css/**", "/js/**").permitAll()
		.and()
		.formLogin()
		.loginPage("/myCustomLogin")
		.loginProcessingUrl("/process-defence")
		.defaultSuccessUrl("/index", true)  
		.usernameParameter("email") 
	    .passwordParameter("password") 
	    //.failureUrl("/springsecurity/myCustomLogin?error=true")  // for dev env
	    .failureUrl("/myCustomLogin?error=true")    // for prod
		.and()
		.httpBasic()
		.and()
		.logout()
		.permitAll()
		.and()
        .exceptionHandling()
        .authenticationEntryPoint((request, response, authException) -> {
            request.getSession().setAttribute("errorMessage", "Please login first!");
            //response.sendRedirect("/springsecurity/myCustomLogin");  // for dev env
            response.sendRedirect("/myCustomLogin");  // for prod env
        });
	}
	
	
	
	
	
	
	
//	@Override
//	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//		auth.inMemoryAuthentication() // this is storing our user in tomcat server memory only.
//			.withUser("rohitpunetha2001@gmail.com").password(passwordEncoder().encode("rohit")).roles("admin")
//			.and()
//		    .withUser(LoginPost.getEmail()).password(passwordEncoder().encode(LoginPost.getPass())).roles("admin");
//	}
	
//	@Autowired
//	private PasswordEncoder BCryptPasswordEncoder;

	// this 'AuthenticationManagerBuilder' helps to create user and store it in
	// memory
	
//	 @Bean
//	    public PasswordEncoder passwordEncoder() {
//	        return new BCryptPasswordEncoder();
//	    }
	
//	@Override
//	public void configure(WebSecurity web) throws Exception {
//	    web.ignoring().antMatchers("/Images/**", "/css/**", "/js/**");
//	}
	
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//	    http
//	        .authorizeRequests()
//	        .antMatchers("/hello").authenticated()
//	        .antMatchers("/bye").authenticated()
//	        .antMatchers("/helloWorld").permitAll()
//	        .antMatchers("/Images/**", "/css/**", "/js/**").permitAll()  
//	        .and()
//	        .formLogin()
//	            .loginPage("/myCustomLogin")
//	            .loginProcessingUrl("/process-defence")
//	        .and()
//	        .httpBasic();
//	}


}
