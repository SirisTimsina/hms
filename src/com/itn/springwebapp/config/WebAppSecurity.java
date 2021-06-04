package com.itn.springwebapp.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;


@Configuration
@EnableWebSecurity
public class WebAppSecurity extends WebSecurityConfigurerAdapter{
 
	
	 @Bean
	 public PasswordEncoder passwordEncoder() {
		 BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		 return passwordEncoder;
	 }
	 
	 @Autowired
	 public DataSource dataSource;

	
	@Override
	public void configure(AuthenticationManagerBuilder auth) throws Exception {
//  in-memory user authentication
//		auth.inMemoryAuthentication().passwordEncoder(passwordEncoder())
//		 	.withUser("sadmin")
//		 	.password("$2a$10$u.tQr3h.8LuzPK4jdjxNO.xY/ncoTBwO7wSCY0aobuUs0FMVx5X/6")
//		 	.roles("ADMIN");
		
		
		// Jdbc user authentication
		auth.jdbcAuthentication()
		.dataSource(dataSource)
		.passwordEncoder(passwordEncoder())
			.usersByUsernameQuery("select username, password, active from user_detail "
					+ " where username=?")
			.authoritiesByUsernameQuery("select ud.username, ur.role from user_detail ud, "
					+ "user_role ur where ud.ud_id = ur.ud_id and username=?");
		
	}
	
	
	@Override
	public void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/admin/**").hasRole("ADMIN")
		.antMatchers("/user/**").hasRole("USER")
		.antMatchers("/**").permitAll()
		.and()
		.formLogin()
		.usernameParameter("username")
		.passwordParameter("password")
		.successForwardUrl("/welcome")
		.and()
		.logout()
		.logoutUrl("/logout")
		.invalidateHttpSession(true)
		.logoutSuccessUrl("/signup?logout")
		.and()
		.csrf()
		.disable();
		
		
	}
	
}
