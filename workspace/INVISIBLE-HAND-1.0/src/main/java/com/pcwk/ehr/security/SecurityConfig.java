package com.pcwk.ehr.security;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import lombok.RequiredArgsConstructor;

@Configuration //클래스가 스프링 설정 클래스임을 나타내며, 
			   //스프링 컨테이너가 이 클래스 내부의 @Bean 어노테이션이 붙은 메서드들을 호출하여 빈 객체를 생성하고 관리
@EnableWebSecurity // 모든 요청 URL이 스프링 시큐리티의 제어를 받도록 만드는 어노테이션. 
@RequiredArgsConstructor //생성자 자동 생성
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	final Logger LOG = LogManager.getLogger(getClass());
	
	// 비밀번호 암호화 로직
	private BCryptPasswordEncoder passwordEncoder;
	
	// 권한이 없는 사용자 접근에 대한 handler
	private WebAccessDeniedHandler webAccessDeniedHandler;
	
	// 인증되지 않은 사용자 접근에 대한 handler
	private WebAuthenticationEntryPoint webAuthenticationEntryPoint;
	
	//AuthenticationProvider 구현체 실제 인증을 담당
	//@Autowired 필요 없음 @RequiredArgsConstructor이게 있기 때문
	private final CustomAuthenticationProvider customAuthenticationProvider;
	
	//DB에서 사용자 정보를 가져오는 UserDetailService 구현체
	private final UserDetailsServiceImpl userServiceImpl;
	
	

	//스프링 시큐리티 룰을 무시할 URL 규칙 설정
	//정적 자원에 대해서는 Security 설정을 적용하지 않음
	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring()
			.antMatchers("/resources/**");
	}
	
	
	//스프링 시큐리티 규칙
	@Override
	public void configure(HttpSecurity http) throws Exception{
		LOG.debug("security config");		
		/*
		 * 우리는 등급이
		 * 1. Manger, 
		 * 2. Member, 
		 * 3. Admin, 
		 * 4. Guest가 있음.
		 */
		
		//메인 페이지에 모든 사용자가 접근 가능하게 설정
		http.authorizeRequests()
				.antMatchers("/main/**").permitAll()		
			.and()	
		
			
		//권한과 인증 없는 사용자
				.exceptionHandling()
				.accessDeniedHandler(webAccessDeniedHandler) // 권한이 없는 사용자 접근 시
				.authenticationEntryPoint(webAuthenticationEntryPoint) // 인증되지 않은 사용자 접근 시
			.and()
			
		//로그인 관련하여 설정
				.formLogin()
				.loginPage("/login/loginView.do")					// 사용자 정의 로그인 페이지
				.successForwardUrl("/main/main.do")					// 로그인 성공 후 이동 페이지(메인으로 이동)
				.failureForwardUrl("/login/loginView.do")			// 로그인 실패 후 이동 페이지
				.permitAll()										// 인증없어도 해당페이지에 이동 가능하게 설정
			.and()
			
				.logout() // 로그아웃 관련 처리
				.logoutUrl("/user/logout") 							// 로그아웃 URL 설정
				.logoutSuccessUrl("/main/main.do") 					// 로그아웃 성공 후 이동할 URL 설정(메인으로 이동)
				.invalidateHttpSession(true) 						// 로그아웃 후 세션 초기화 설정
				.deleteCookies("JSESSIONID") 						// 로그아웃 후 쿠기 삭제 설정(JSESSIONID가 일반적인 쿠키이름)
			.and()
			
			// 사용자 인증 필터 적용
				.addFilterBefore(usrCustomAuthenticationFilter(), UsernamePasswordAuthenticationFilter.class);		

	}
	
	/*
	 * customLoginSuccessHandler를 CustomAuthenticationFilter의 인증 성공 핸들러로 추가
	 * 로그인 성공 시 /user/login 로그인 url을 체크하고 인증 토큰 발급 
	 */
	@Bean
	public UsrCustomAuthenticationFilter usrCustomAuthenticationFilter() throws Exception {
		UsrCustomAuthenticationFilter customAuthenticationFilter = new UsrCustomAuthenticationFilter(authenticationManager());
		customAuthenticationFilter.setFilterProcessesUrl("/login/loginView.do");
		customAuthenticationFilter.setAuthenticationSuccessHandler(usrCustomLoginSuccessHandler());
		customAuthenticationFilter.setAuthenticationFailureHandler(usrCustomLoginFailHandler());
		customAuthenticationFilter.afterPropertiesSet();
		return customAuthenticationFilter;
	}
	
	// 로그인 성공 시 실행될 handler bean 등록
	@Bean
	public UsrCustomLoginSuccessHandler usrCustomLoginSuccessHandler() {
		return new UsrCustomLoginSuccessHandler();
	}	
	// 로그인 실패 시 실행될 handler bean 등록
	@Bean
	public UsrCustomLoginFailHandler usrCustomLoginFailHandler() {
		return new UsrCustomLoginFailHandler();
	}
	
	//패스워드 암호화를 위한 PasswordEncoder Bean으로 등록	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	//AuthenticationManagerBuilder : 다양한 인증 관리자를 생성해주는 객체
	//// 스프링 시큐리티가 사용자를 인증하는 방법이 담긴 객체
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder authenticationManagerBuilder) throws Exception {
		authenticationManagerBuilder
			.authenticationProvider(customAuthenticationProvider)
			.userDetailsService(userServiceImpl)
			.passwordEncoder(passwordEncoder());
	}
	
}
