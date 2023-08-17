package com.pcwk.ehr.security;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
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
public class AuthenticationProvider implements org.springframework.security.authentication.AuthenticationProvider {
	
	final Logger  LOG = LogManager.getLogger(getClass());
	
	//UserDetailsService 구현체
	private final UserDetailsServiceImpl userServiceImpl;
	
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
        if (!passwordMatches(authentication.getCredentials().toString(), userDetails.getPassword())) {
            throw new BadCredentialsException("비밀번호가 틀렸습니다.");
        }
		
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
	
    // 비밀번호 일치 여부 확인
    private boolean passwordMatches(String rawPassword, String encodedPassword) {
        return passwordEncoder().matches(rawPassword, encodedPassword);
    }
    
    // PasswordEncoder 가져오기
    private PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
	
	/*
	 * 위의 코드가 실제로 인증을 처리해주는 AuthenticationProvider 구현체 입니다.
	 * UserDetailsService 인터페이스를 구현한 UserService 객체에게 사용자로 받은 사용자명으로 
	 * 데이터베이스에 해당 사용자를 조회하여 존재하면 UserDetails에 담아서 AuthenticationProvider에게 제공해주는 역할을 하고 있습니다. 
	 * 존재하지 않으면 예외를 처리
	 */
}
