<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.cgv.vo.BoardVO, com.cgv.dao.BoardDao, java.util.ArrayList" %>
<%
	BoardDao dao = new BoardDao();
	ArrayList<BoardVO> list = dao.select();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV-게시판</title>
<link href="http://localhost:9000/cgv/css/cgv.css" rel="stylesheet">
<link href="http://localhost:9000/cgv/css/bootstrap.css" rel="stylesheet">
</head>
<body>
	<!-- header start -->
	<iframe src="http://localhost:9000/cgv/header.jsp"  scrolling="no" frameborder="0" width="100%" height="150px"></iframe>
	
	
	<div class="content">
		<section class="login">
			<h1>게시판</h1>
			<table class="table table-dark table-striped">
				<tr>
					<td colspan="4">
						<a href="board_write.jsp"><button type="button" class="btn_style2">글쓰기</button></a>
					</td>
				</tr>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>조회수</th>
					<th>작성일자</th>
				</tr>
				<% for(BoardVO vo : list){ %>
				<tr>
					<td><%=vo.getRno() %></td>
					<td><a href="board_content.jsp?bid=<%=vo.getBid()%>"><%=vo.getBtitle() %></a></td>
					<td><%= vo.getBhits() %></td>
					<td><%= vo.getBdate() %></td>
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
	
<script type="text/javascript" src = "http://localhost:9000/cgv/js/bootstrap.js"></script>
	
</body>
</html>







