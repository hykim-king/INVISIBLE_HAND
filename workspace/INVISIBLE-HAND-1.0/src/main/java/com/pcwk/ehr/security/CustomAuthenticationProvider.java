package com.pcwk.ehr.security;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;


//사용자의 인증을 처리하는 클래스
@Component
@RequiredArgsConstructor
public class CustomAuthenticationProvider implements org.springframework.security.authentication.AuthenticationProvider {
	
	final Logger  LOG = LogManager.getLogger(getClass());
	
	//UserDetailsService 구현체
	private final UserDetailsServiceImpl userServiceImpl;
	private final PasswordEncoder passwordEncoder;
	
	
	//실제 인증 
	//사용자명(아이디)을 기반으로 UserDetailsServiceImpl의 loadUserByUsername() 메서드를 호출하여 사용자 정보를 가져옵니다. 
	//만약 사용자가 존재하지 않을 경우, 예외 처리합니다.
	//사용자가 존재하는 경우, 입력한 비밀번호와 데이터베이스에서 가져온 비밀번호를 비교하여 일치하는지 확인합니다. 일치하지 않으면 인증 실패로 처리합니다.
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		
		
		String username = authentication.getName();
		UserDetails userDetails = null;
		
		try {
			userDetails = userServiceImpl.loadUserByUsername(username);
		}catch(UsernameNotFoundException e) {
			LOG.debug(e.getMessage());
		}catch(BadCredentialsException e) {
			LOG.debug(e.getMessage());
		}catch(Exception e) {
			LOG.debug(e.getMessage());
		}
		
	    // 인증 실패 처리
        if (!passwordEncoder.matches(authentication.getCredentials().toString(), userDetails.getPassword())) {
            throw new BadCredentialsException("비밀번호가 틀렸습니다.");
        }
		
        //인증 성공시 토근으로 Security에 인증이 성공했음을 알림.
		return new UsernamePasswordAuthenticationToken(
				userDetails.getUsername(),
				userDetails.getPassword(),
				userDetails.getAuthorities()
				);
	}
	
	//AuthenticationProvider의 supports 메서드는 해당 AuthenticationProvider가 어떤 타입의 인증 토큰을 처리할 수 있는지를 반환
	@Override
	public boolean supports(Class<?> authentication) {		
		return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication);
	}
	
    //SecurityConfig에서 bean등록 되어 있으니까 생성자를 통해 주입.
    //@Bean
    // private PasswordEncoder passwordEncoder() {
    //     return new BCryptPasswordEncoder();
    // }
	
}
