<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cgv.vo.MemberVO, com.cgv.dao.MemberDao" %>
    
<jsp:useBean id="vo"  class="com.cgv.vo.MemberVO"></jsp:useBean> 
<jsp:setProperty property="*" name="vo"/>
    
<%
	MemberDao dao = new MemberDao();
	int result = dao.getLoginResult(vo);
	
	
	if(result == 1){
		//로그인 성공---> id를 세션에 담아 브라우저에 전송
		session.setAttribute("sid", vo.getId());		
		response.sendRedirect("http://localhost:9000/cgv/main.jsp");
	}else{
		response.sendRedirect("login.jsp?login_result=fail");
	}
	
%>