<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="com.cgv.vo.BoardVO, com.cgv.dao.BoardDao"
    %>

<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.cgv.vo.BoardVO"></jsp:useBean>
<jsp:setProperty name="vo" property="*" />

<%
	BoardDao dao = new BoardDao();
	int result = dao.insert(vo);
	if(result ==1){
		response.sendRedirect("board_list.jsp");
	}
	
%>    
