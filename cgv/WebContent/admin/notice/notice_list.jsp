<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.cgv.dao.NoticeDao, com.cgv.vo.NoticeVO, java.util.ArrayList" %>
    
<%

	String sid = (String)session.getAttribute("sid");
	if(sid != null && sid.equals("admin")){
	
	
	NoticeDao dao = new NoticeDao();
	ArrayList<NoticeVO> list = dao.select();
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV-게시판</title>
<link href="http://localhost:9000/cgv/css/cgv.css" rel="stylesheet">
</head>
<body>
	<!-- header start -->
	<iframe src="http://localhost:9000/cgv/header.jsp"  scrolling="no" frameborder="0" width="100%" height="150px"></iframe>
	
	
	<div class="content">
		<section class="login">
			<h1>공지사항 관리</h1>
			<table class="board_list">
				<tr>
					<td colspan="4">
						<a href="notice_write.jsp"><button type="button" class="btn_style2">글쓰기</button></a>
					</td>
				</tr>
				<tr>
					<td class="admin_notice_bgcolor" >번호</td>
					<td class="admin_notice_bgcolor" ><center>제목</center></td>
					<td class="admin_notice_bgcolor" >조회수</td>
					<td class="admin_notice_bgcolor" >작성일자</td>
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

<% }else{ %>
	<script>
		alert("접근권한이 필요한 합니다. 확인 후 진행해주세요.");
		location.href="http://localhost:9000/cgv/login/login.jsp";
	</script>
<% } %>





