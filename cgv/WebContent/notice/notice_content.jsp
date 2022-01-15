<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.cgv.vo.NoticeVO, com.cgv.dao.NoticeDao" %>
<%
	String nid = request.getParameter("nid");
	NoticeDao dao = new NoticeDao();
	NoticeVO vo = dao.select(nid, "user");
	dao.updateHits(nid);
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
			<table class="notice_content">
				<tr>					
					<th>제목</th>
					<td><%= vo.getNtitle() %></td>					
				</tr>
				<tr>					
					<th>내용</th>
					<td><%= vo.getNcontent() %><br><br><br></td>					
				</tr>
				<tr>					
					<th>조회수</th>
					<td><%= vo.getNhits() %></td>					
				</tr>
				<tr>					
					<th>작성일자</th>
					<td><%= vo.getNdate() %></td>					
				</tr>
				<tr>					
					<td colspan="2">
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







