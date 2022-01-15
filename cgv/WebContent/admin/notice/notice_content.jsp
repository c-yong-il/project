<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.cgv.dao.NoticeDao, com.cgv.vo.NoticeVO" %>

<%
	String sid = (String)session.getAttribute("sid");
	if(sid != null && sid.equals("admin")){

	String nid = request.getParameter("nid");
	NoticeDao dao = new NoticeDao();
	NoticeVO vo = dao.select(nid, "admin");

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
			<table class="board_content">
				<tr>					
					<td class="admin_notice_bgcolor"><center>제목</center></td>
					<td><%= vo.getNtitle() %></td>					
				</tr>
				<tr>					
					<td class="admin_notice_bgcolor"><center>내용</center></td>
					<td><%= vo.getNcontent() %><br><br><br></td>					
				</tr>
				<tr>					
					<td class="admin_notice_bgcolor"><center>조회수</center></td>
					<td><%= vo.getNhits() %></td>					
				</tr>
				<tr>					
					<td class="admin_notice_bgcolor"><center>작성일자</center></td>
					<td><%= vo.getNdate() %></td>					
				</tr>
				<tr>					
					<td colspan="2">
						<a href="notice_update.jsp?nid=<%= nid %>">
							<button type="button" class="btn_style3">수정하기</button>
						</a>
						<a href="notice_delete.jsp?nid=<%= nid %>">
							<button type="button" class="btn_style3">삭제하기</button>
						</a>
						<a href="notice_list.jsp">
							<button type="button" class="btn_style3">리스트</button>
						</a>
						<a href="http://localhost:9000/cgv/main.jsp">
							<button type="button" class="btn_style3">홈으로</button>
						</a>
					</td>		
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





