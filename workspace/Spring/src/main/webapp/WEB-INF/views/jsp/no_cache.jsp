<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  // http/1.1, 웹브라우저가 응답결과를 캐시하지 않음
  response.setHeader("Cache-Control", "no-cache");

  // 브라우저의 앞/뒤로 가기
  response.setHeader("Cache-Control", "no-store");

  //http/1.0
  response.addHeader("Cache-Control", "no-cache");
  //http/1.0
  response.setHeader("Pragma", "no-cache");
  //http/1.0에서 현재시간 이전으로 캐시하지 않음
  response.setDateHeader("Expires", 1L);
%>