<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.cgv.vo.NoticeVO, com.cgv.dao.NoticeDao" %>

<% 
	String sid = (String)session.getAttribute("sid");
	if(sid != null && sid.equals("admin")){
	request.setCharacterEncoding("utf-8"); 
%>
<jsp:useBean id="vo"  class="com.cgv.vo.NoticeVO"></jsp:useBean>    
<jsp:setProperty name="vo" property="*" />

<%
	NoticeDao dao = new NoticeDao();
	int result = dao.update(vo);
	
	if(result == 1){
		response.sendRedirect("notice_list.jsp");
	}
%>

<% }else{ %>
	<script>
		alert("접근권한이 필요한 합니다. 확인 후 진행해주세요.");
		location.href="http://localhost:9000/cgv/login/login.jsp";
	</script>
<% } %>