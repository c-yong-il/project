<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String sid = (String)session.getAttribute("sid");
	if(sid != null && sid.equals("admin")){
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
			<h1>공지사항 관리</h1>
			<form name="noticeWriteForm" action="notice_write_proc.jsp" method="post">
				<table class="board_write">
					<tr>					
						<td class="admin_notice_bgcolor"><center>제목</center></td>
						<td>
							<input type="text" name="ntitle" id="ntitle">
						</td>					
					</tr>
					<tr>					
						<td class="admin_notice_bgcolor"><center>내용</center></td>
						<td>
							<textarea name="ncontent"></textarea>
						</td>					
					</tr>				
					<tr>					
						<td colspan="2">
							<button type="button" class="btn_style3" onclick="noticeWriteFormCheck()">등록완료</button>
							<button type="reset" class="btn_style3">다시쓰기</button>
							<a href="notice_list.jsp">
								<button type="button" class="btn_style3">리스트</button>
							</a>
							<a href="http://localhost:9000/cgv/main.jsp">
								<button type="button" class="btn_style3">홈으로</button>
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

<% }else{ %>
	<script>
		alert("접근권한이 필요한 합니다. 확인 후 진행해주세요.");
		location.href="http://localhost:9000/cgv/login/login.jsp";
	</script>
<% } %>





