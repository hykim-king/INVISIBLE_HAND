package com.pcwk.ehr.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Component;


//권한 없는 경우 이동할 페이지 및 에러코드 반환 로직
@Component
public class WebAccessDeniedHandler implements AccessDeniedHandler{
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response,
			AccessDeniedException accessDeniedException) throws IOException, ServletException {
		// 권한이 없는 경우 페이지 이동 시 사용
		response.sendRedirect("/main/main.do");
		// 권한이 없는 경우 에러코드 반환 시 사용
		response.sendError(HttpServletResponse.SC_UNAUTHORIZED);
	}
}
