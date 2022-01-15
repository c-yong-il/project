<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.project02.dao.NoticeDao, com.project02.vo.NoticeVO"
    %>
<%
	String notice_id = request.getParameter("notice_id");
	NoticeDao dao = new NoticeDao();
	NoticeVO vo = dao.select(notice_id,"update");
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>드림월드-공지사항-수정</title>
<link href="http://localhost:9000/project02/css/project2.css" rel="stylesheet">
<script src="http://localhost:9000/project02/js/project02.js"></script>
</head>
<body>
	<div class="content">
		<section class="notice">
			<h1>⬩공지사항</h1>
			<form name="notice_updateform" action="notice_update_proc.jsp" method="post">
				<input type="hidden" name="notice_id" value="<%=notice_id %>">
				<table class="notice_update">
					<tr>
						<td>제목</td>
						<td>
							<input type="text" name="ntitle" value="<%=vo.getNtitle() %>" id="ntitle">
						</td>
					</tr>	
					
					<tr>
						<td>내용</td>
						<td>
							<textarea name="ncontent"><%=vo.getNcontent() %></textarea>
						</td>
					</tr>
					
					<tr>
						<td colspan="2">
							<button type="button" onclick="noticeUpdateFormCheck()">수정완료</button>
							<button type="reset">다시쓰기</button>
						</td>
					</tr>
				</table>
			</form>
		</section>
	</div>
</body>
</html>