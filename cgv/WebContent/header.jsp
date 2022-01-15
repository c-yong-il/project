<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.cgv.dao.BoardDao, com.cgv.vo.BoardVO" %>
<%
	String sid = (String)session.getAttribute("sid");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="http://localhost:9000/cgv/css/cgv.css" rel="stylesheet">
</head>
<body>
	<header>
		<div class="header_menu">
			<% if(sid == null){ %>
			<nav>				
				<ul>
					<li><a href="http://localhost:9000/cgv/login/login.jsp" target="_parent">로그인</a></li>
					<li><a href="http://localhost:9000/cgv/join/join.jsp" target="_parent">회원가입</a></li>
					<!-- <li><a href="http://localhost:9000/cgv/mypage/mycgv.jsp" target="_parent">MyCGV</a></li> -->
					<li><a href="">VIP</a></li>
					<li><a href="">고객센터</a></li>
					<li><a href="http://localhost:9000/cgv/notice/notice_list.jsp" target="_parent">공지사항</a></li>
					<li><a href="http://localhost:9000/cgv/board/board_list.jsp" target="_parent">게시판</a></li>
					<!-- <li><a href="http://localhost:9000/cgv/admin/admin.jsp" target="_parent">ADMIN</a></li> -->
				</ul>
			</nav>
			<% }else{ %>
			  <nav>				
				<ul>
					<li><a href="#"><%= sid %>님!!</a></li>
					<li><a href="http://localhost:9000/cgv/login/logout.jsp" target="_parent">로그아웃</a></li>
					<!-- <li><a href="http://localhost:9000/cgv/join/join.jsp" target="_parent">회원가입</a></li> -->
					<li><a href="http://localhost:9000/cgv/mypage/mycgv.jsp" target="_parent">MyCGV</a></li> 
					<li><a href="">VIP</a></li>
					<li><a href="">고객센터</a></li>
					<li><a href="http://localhost:9000/cgv/notice/notice_list.jsp" target="_parent">공지사항</a></li>
					<li><a href="http://localhost:9000/cgv/board/board_list.jsp" target="_parent">게시판</a></li>
					<% if(sid.equals("admin")){ %>
					 	<li><a href="http://localhost:9000/cgv/admin/admin.jsp" target="_parent">ADMIN</a></li> 
					<% } %>
				</ul>
			</nav>
			<% } %>
			<div class="relative">
				<a href="http://localhost:9000/cgv/main.jsp" target="_parent">
					<img src="http://localhost:9000/cgv/images/h1_cgv.png">
				</a>
				<div>
					<img src="http://localhost:9000/cgv/images/h2_cultureplex.png">
					<nav>
						<ul>
							<li><a href="">영화</a></li>
							<li><a href="http://localhost:9000/cgv/reserv/form.jsp" target="_parent">예매</a></li>
							<li><a href="">극장</a></li>
							<li><a href="">이벤트&컬처</a></li>
						</ul>
					</nav>
				</div>
			</div>		
		</div>
	</header>
</body>
</html>