<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<title>Insert title here</title>
<link href="http://localhost:9000/project02/css/project2.css" rel="stylesheet">
<script src="http://localhost:9000/project02/js/project02.js"></script>
</head>
<body>
	<div class="content">
	
		<section class="notice">
	
			<h1>⬩공지사항</h1>
			<form name="notice_writeform" action="notice_write_proc.jsp" method="post">
				<table class="notice_write">
					<tr>
						<td>제목</td>
						<td>
							<input type="text" name="ntitle" id="ntitle">
						</td>
					</tr>
	
					<tr>
						<td>내용</td>
						<td>
							<textarea name="ncontent" id="ncontent"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
						<button type="button" onclick="noticeWriteFormCheck()">등록완료</button>
						<button type="reset">다시쓰기</button>
						</td>
					</tr>
				</table>
			</form>
		</section>
	</div>
</body>
</html>