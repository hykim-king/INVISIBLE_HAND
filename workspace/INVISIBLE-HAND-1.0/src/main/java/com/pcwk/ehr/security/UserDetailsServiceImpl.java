package com.pcwk.ehr.security;

import java.util.Optional;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.VO.MemberVO;

import lombok.RequiredArgsConstructor;

//UserDetailsService 구현체
//DB에서 사용자의 등급을 가져와 등급에 따라 권한을 부여
@Service
@RequiredArgsConstructor
public class UserDetailsServiceImpl implements UserDetailsService {

	final Logger LOG = LogManager.getLogger(getClass());
	private final MemberRepository memberRepository;
	private final PasswordEncoder passwordEncoder;
	
	@Override
	public UserDetails loadUserByUsername(String memberId) throws UsernameNotFoundException {
		
		//로그인시도 안하고, 로그인 안한 사용자에게 GUEST 권한 부여를 위한 로직
        if ("guest".equalsIgnoreCase(memberId)) {
            // "GUEST" 사용자의 정보를 반환
            return User.builder()
                    .username("guest")
                    .password(passwordEncoder.encode("guestpasswd"))
                    .roles("GUEST")
                    .build();
        }
		
        
		Optional<MemberVO> memberOptional = memberRepository.findByMemberId(memberId);		
		//Optional이 false일때
	    if (!memberOptional.isPresent()) {
	        throw new UsernameNotFoundException("Could not find user " + memberId);
	        
	    }
	    
	    MemberVO memberVO = memberOptional.get();
	    LOG.debug("Success find member {}", memberVO);
		    
        // MemberGrade 값에 따라 권한 설정
        String role = "MEMBER"; // 기본값은 "MEMBER" 권한으로 설정
        int memberGrade = memberVO.getMemberGrade();

        switch (memberGrade) {
            case 1:
                role = "MANAGER"; 	 //관리자
                break;
            case 2:
                role = "SUBSCRIBER"; //구독자
                break;
            case 3:
                role = "MEMBER";     //회원
                break;                              
            default:
            	role = "GUEST";      //게스트
            	break;
        }	    
	    
		return User.builder()
				.username(memberVO.getMemberId())
                .password(passwordEncoder.encode(memberVO.getPassword()))
                .roles(role)
                .build();
	}

}


