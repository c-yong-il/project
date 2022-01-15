<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "com.project02.dao.NoticeDao, com.project02.vo.NoticeVO" %>
<%
	String notice_id = request.getParameter("notice_id");
	NoticeDao dao = new NoticeDao();
	NoticeVO vo = dao.select(notice_id, "content");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>Insert title here</title>
<link href="http://localhost:9000/project02/css/project2.css" rel="stylesheet">
</head>
<body>
	<div class="content">
		<form name="notice_contentform">
			<section class="notice">
				<h1>⬩공지사항</h1>
				<table class="notice_content">
					<tr>
						<td class="title_style"><%= vo.getNtitle() %></td>
						<td class="date_style">날짜:<%=vo.getNotice_date() %></td>
						<td class="date_style">조회수:<%=vo.getNotice_hits() %></td>
					</tr>
					<tr>
						<td colspan="3"><%=vo.getNcontent() %></td>
					</tr>
					<tr>
						<td colspan="3" class="btn_style">
							<a href="notice_update.jsp?notice_id=<%= notice_id%>"><button type="button">수정</button></a>
							<button type="button">삭제</button>
							<a href="notice_list.jsp"><button type="button">목록</button></a>							
						</td>
					</tr>
				</table>		
			</section>
		</form>
	</div>
</body>
</html>