<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "com.project02.dao.NoticeDao, com.project02.vo.NoticeVO, java.util.ArrayList"%>
<%
	NoticeDao dao = new NoticeDao();
	ArrayList<NoticeVO> list = dao.select();
%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>Insert title here</title>
<link href="http://localhost:9000/project02/css/project2.css" rel="stylesheet">
<link href="http://localhost:9000/project02/css/bootstrap.css" rel="stylesheet">
</head>
<body>
	<div class="content">
	
		<section class="notice">
		
		<h1>⬩공지사항</h1>
		
			<table class="notice_list">
				<tr>
					<td colspan="4" class="search">
						<select>
							<option>제목</option>
							<option>전체</option>
						</select>
						<input type="text">
						<a href=""><button type="button">검색</button></a>
					</td>
				</tr>

				<tr>
					<td class="admin_notice_bgcolor">번호</td>
					<td class="admin_notice_bgcolor">제목</td>
					<td class="admin_notice_bgcolor">작성일</td>
					<td class="admin_notice_bgcolor">조회수</td>
				</tr>
				
				<% for(NoticeVO vo : list) { %>
				<tr>
					<td><%= vo.getRno() %></td>
					<td><a href="notice_content.jsp?notice_id=<%=vo.getNotice_id() %>"><%=vo.getNtitle() %></a></td>
					<td><%= vo.getNotice_date() %></td>
					<td><%= vo.getNotice_hits() %></td>
				</tr>
				<% } %>
				<tr>
					<td colspan="4">
						<a href="notice_write.jsp"><button type="button">글쓰기</button></a> 
					</td>
				</tr>
			</table>
		</section>
	
	</div>
</body>
</html>