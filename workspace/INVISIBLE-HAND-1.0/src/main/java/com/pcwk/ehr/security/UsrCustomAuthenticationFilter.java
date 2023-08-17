package com.pcwk.ehr.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.servlet.ModelAndView;

public class UsrCustomAuthenticationFilter extends UsernamePasswordAuthenticationFilter {
	final Logger  LOG = LogManager.getLogger(getClass());
	
    public UsrCustomAuthenticationFilter(AuthenticationManager authenticationManager) {
        super.setAuthenticationManager(authenticationManager);
        super.setAuthenticationFailureHandler(new UsrCustomAuthenticationFailureHandler());
    }

    @Override
    public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response)
            throws AuthenticationException {
        HttpSession session = request.getSession();

        // 세션 체크 및 리다이렉트 로직 추가
        if (session.getAttribute("user") == null) {
            try {
                response.sendRedirect(request.getContextPath() + "/login/loginView.do");
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null; // 리턴 값이 null이면 인증 처리 중지
        }

        // 기존의 attemptAuthentication() 메서드 내용
        UsernamePasswordAuthenticationToken authRequest = new UsernamePasswordAuthenticationToken(
                request.getParameter("memberId"), request.getParameter("password"));

        setDetails(request, authRequest);
        return this.getAuthenticationManager().authenticate(authRequest);
    }
    

	
}
