<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.cgv.dao.BoardDao"
    %>

<%
   	String bid = request.getParameter("bid");
	BoardDao dao = new BoardDao();
	int result = dao.delete(bid);
	
	if(result ==1){
		response.sendRedirect("board_list.jsp");
	}
 %>  