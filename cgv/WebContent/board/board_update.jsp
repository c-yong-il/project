<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.cgv.vo.BoardVO, com.cgv.dao.BoardDao"
    %>
<%
	String bid = request.getParameter("bid");
	BoardDao dao = new BoardDao();
	BoardVO vo = dao.select(bid, "update");
%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV-게시판</title>
<link href="http://localhost:9000/cgv/css/cgv.css" rel="stylesheet">
<script src="http://localhost:9000/cgv/js/cgv.js"></script>
</head>
<body>
	<!-- header start -->
	<iframe src="http://localhost:9000/cgv/header.jsp"  scrolling="no" frameborder="0" width="100%" height="150px"></iframe>
	
	
	<div class="content">
		<section class="login">
			<h1>게시판</h1>
			<form name="boardUpdateForm" action="board_update_proc.jsp" method="post">
				<input type="hidden" name="bid" value="<%=bid %>">
				<table class="board_update">
					<tr>					
						<th>제목</th>
						<td>
							<input type="text" name="btitle" value="<%=vo.getBtitle() %>" id="btitle">
						</td>					
					</tr>
					<tr>					
						<th>내용</th>
						<td>
							<textarea rows="10" cols="50" name="bcontent"><%=vo.getBcontent() %></textarea>
						</td>					
					</tr>				
					<tr>					
						<td colspan="2">
							<button type="button" class="btn_style3" onclick="boardUpdateFormCheck()">수정완료</button>
							<button type="reset" class="btn_style3">다시쓰기</button>
							<a href="board_content.jsp?bid=<%=bid%>">
								<button type="button" class="btn_style3">이전페이지</button>
							</a>
							<a href="board_list.jsp">
								<button type="button" class="btn_style3">리스트</button>
							</a>							
						</td>		
					</tr>					
				</table>
			</form>
		</section>		
		
	</div>
	
	<!-- footer start -->
	<iframe src="http://localhost:9000/cgv/footer.jsp"  scrolling="no" frameborder="0" width="100%" height="500px"></iframe>
	
	
</body>
</html>







