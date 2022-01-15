<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.cgv.dao.BoardDao, com.cgv.vo.BoardVO" %>
<%
	String bid = request.getParameter("bid");
	BoardDao dao = new BoardDao();
	BoardVO vo = dao.select(bid, "content");
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
			<h1>게시판</h1>
			<table class="board_content">
				<tr>					
					<th>제목</th>
					<td><%= vo.getBtitle() %></td>					
				</tr>
				<tr>					
					<th>내용</th>
					<td><%= vo.getBcontent() %><br><br><br></td>					
				</tr>
				<tr>					
					<th>조회수</th>
					<td><%= vo.getBhits() %></td>					
				</tr>
				<tr>					
					<th>작성일자</th>
					<td><%= vo.getBdate() %></td>					
				</tr>
				<tr>					
					<td colspan="2">
						<a href="board_update.jsp?bid=<%=bid%>">
							<button type="button" class="btn_style3">수정하기</button>
						</a>
						<a href="board_delete.jsp?bid=<%=bid%>">
							<button type="button" class="btn_style3">삭제하기</button>
						</a>
						<a href="board_list.jsp">
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







