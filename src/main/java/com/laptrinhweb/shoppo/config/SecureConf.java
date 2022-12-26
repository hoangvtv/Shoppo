package com.laptrinhweb.shoppo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

@Configuration
@EnableWebSecurity
public class SecureConf extends WebSecurityConfigurerAdapter {

	@Autowired
	private UserDetailsService userDetailsService;

	@Override
	protected void configure(final HttpSecurity http) throws Exception {
		System.out.println("User Details:" + userDetailsService.toString());
		http.csrf().disable().authorizeRequests()

				.antMatchers("/css/**", "/js/**", "/webfonts/**", "/upload/**", "/summernote/**", "/files/**")
				.permitAll()

				.antMatchers("/admin/**").hasAnyAuthority("ROLE_ADMIN")
				.antMatchers("cart/order/**").authenticated()
				.and()
				.exceptionHandling().accessDeniedPage("/page-404")
				.and()
				.formLogin().loginPage("/customer/login").loginProcessingUrl("/perform_login").defaultSuccessUrl("/home", true)
				.failureUrl("/customer/login?login_error=true").permitAll()
				.and()
				.logout().logoutUrl("/logout").logoutSuccessUrl("/home").invalidateHttpSession(true)
				.deleteCookies("JSESSIONID").permitAll();
	}
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(new BCryptPasswordEncoder(4));
	}

}
