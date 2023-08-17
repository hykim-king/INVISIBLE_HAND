package com.pcwk.ehr.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

public class UsrCustomAuthenticationFailureHandler implements AuthenticationFailureHandler {

    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
                                        AuthenticationException exception) throws IOException, ServletException {
    	
        String errorMessage = exception.getMessage();
        if (exception instanceof UsernameNotFoundException) {
            errorMessage = "아이디가 존재하지 않습니다. 아이디를 확인해주세요";
        } else if (exception instanceof BadCredentialsException) {
            errorMessage = "비밀번호가 일치 하지 않습니다. 비밀번호를 확인해주세요.";
        }


        response.setStatus(HttpServletResponse.SC_UNAUTHORIZED); // 실패 상태 코드 전송
        response.getWriter().println(errorMessage); // 실패 메시지 전송

    }

}
