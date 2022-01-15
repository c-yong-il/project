<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.cgv.dao.NoticeDao, com.cgv.vo.NoticeVO, java.util.ArrayList" %>

<%
	NoticeDao dao = new NoticeDao();
	ArrayList<NoticeVO> list = dao.select();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV-공지사항</title>
<link href="http://localhost:9000/cgv/css/cgv.css" rel="stylesheet">
</head>
<body>
	<!-- header start -->
	<iframe src="http://localhost:9000/cgv/header.jsp"  scrolling="no" frameborder="0" width="100%" height="150px"></iframe>
	
	
	<div class="content">
		<section class="login">
			<h1>공지사항</h1>
			<table class="notice_list" >
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>조회수</th>
					<th>작성일자</th>
				</tr>
				<% for(NoticeVO vo : list){ %>
				<tr>
					<td><%= vo.getRno() %></td>
					<td><a href="notice_content.jsp?nid=<%=vo.getNid()%>"><%= vo.getNtitle() %></a></td>
					<td><%= vo.getNhits() %></td>
					<td><%= vo.getNdate() %></td>
				</tr>
				<% } %>
				<tr>
					<td colspan="4"><< 1  2  3  4  5  >></td>					
				</tr>
			</table>
		</section>		
		
	</div>
	
	<!-- footer start -->
	<iframe src="http://localhost:9000/cgv/footer.jsp"  scrolling="no" frameborder="0" width="100%" height="500px"></iframe>
	
</body>
</html>







