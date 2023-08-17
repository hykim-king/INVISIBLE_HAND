package com.pcwk.ehr.security;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import lombok.RequiredArgsConstructor;

@Configuration //클래스가 스프링 설정 클래스임을 나타내며, 
			   //스프링 컨테이너가 이 클래스 내부의 @Bean 어노테이션이 붙은 메서드들을 호출하여 빈 객체를 생성하고 관리
@EnableWebSecurity // 모든 요청 URL이 스프링 시큐리티의 제어를 받도록 만드는 어노테이션. 
@RequiredArgsConstructor //생성자 자동 생성
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	final Logger LOG = LogManager.getLogger(getClass());
	
	
	//AuthenticationProvider 구현체
	//@Autowired 필요 없음 @RequiredArgsConstructor이게 있기 때문
	private final AuthenticationProvider authenticationProvider;
	
	//DB에서 사용자 정보를 가져오는 UserDetailService 구현체
	private final UserDetailsServiceImpl userServiceImpl;
	
	@Override
	public void configure(HttpSecurity http) throws Exception{
		//configure(HttpSecurity) 인터셉터로 요청을 안전하게 보호하는 방법을 설정하기 위한 오버라이딩
		LOG.debug("security config");
		
		//웹과 관련된 다양한 보안 설정을 걸어주는 역할.
		//해당 부분을 통해 권한에 따라 접근 url을 정할 수 있음.
		/*
		 * 우리는 등급이
		 * 1. Manger, 
		 * 2. Member, 
		 * 3. Admin, 
		 * 4. Guest가 있음.
		 */
		
		//메인 페이지에 모든 사용자가 접근 가능하게 설정
		http.authorizeRequests()
			.antMatchers("/main/**").permitAll(); 
		
		
		
		//authorizeRequests()는 시큐리티 처리에 HttpServletRequest를 이용함
		/*
		http.authorizeRequests().antMatchers("/manager/**").hasRole("MANAGER");		
		http.authorizeRequests().antMatchers("/admin/**").hasRole("ADMIN");  */
		
	/*ex)
	 * http.authorizeRequests()
    .antMatchers("/**").permitAll() // master는 모든 URL에 접근 가능
    .antMatchers("/admin/**").hasRole("master") // master만 admin 경로 접근 가능
    .antMatchers("/user/**").hasAnyRole("master", "loginuser") // master와 loginuser는 user 경로 접근 가능
    .antMatchers("/guest/**").hasRole("guest") // guest는 guest 경로 접근 가능
    .anyRequest().authenticated(); // 나머지는 인증된 사용자만 접근 가능
    	
	위 코드에서 .anyRequest().authenticated()는 모든 요청이 인증된 사용자에게만 허용되도록 설정한 것입니다. 
	이를 통해 로그인한 사용자만 인증된 상태로 해당 URL에 접근할 수 있게 됩니다.
	스프링 시큐리티의 설정을 이용하면 원하는 역할과 접근 권한을 설정하여 웹 애플리케이션의 보안을 구성할 수 있습니다.
	 */
		//로그인 관련하여 설정
		http.formLogin()
			.loginPage("")  				// 사용자 정의 로그인 페이지
			.defaultSuccessUrl("") 			// 로그인 성공 후 이동 페이지
			.failureUrl("");				// 로그인 실패 후 이동 페이지
		
		//특정 리소스에 대한 접근 권한이 존재하지 않을 때 이동시킬 페이지 설정
		http.exceptionHandling().accessDeniedPage("");
		
		
		//로그아웃시에 세션 무효화, 스프링 시큐리티는 사용자 정보를 HttpSession 방식으로 관리하기 때문에
		//브라우저가 완전히 종료되면 로그인한 정보를 잃게 된다.
		//브라우저를 종료하지 않을 시에 로그아웃으로 무효화시키기
		http.logout().logoutUrl("").invalidateHttpSession(true);
	}
	
	//패스워드 암호화를 위한 PasswordEncoder Bean으로 등록	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	//AuthenticationManagerBuilder : 다양한 인증 관리자를 생성해주는 객체
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.authenticationProvider(authenticationProvider)
			.userDetailsService(userServiceImpl)
			.passwordEncoder(passwordEncoder());
	}
	
}
