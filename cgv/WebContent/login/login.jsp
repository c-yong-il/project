<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String login_result = request.getParameter("login_result");
	String join_result = request.getParameter("join_result");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV-로그인</title>
<link href="http://localhost:9000/cgv/css/cgv.css" rel="stylesheet">
<script src="http://localhost:9000/cgv/js/cgv.js"></script>
<script>
	if('<%=login_result%>' == 'fail'){
		alert("아이디 또는 패스워드가 다릅니다. 확인 후 다시 진행해주세요");
	}
	
	/* 회원가입 성공 메시지 출력 */
	if('<%=join_result%>' == 'succ'){
		alert("회원가입에 성공하셨습니다. 로그인 페이지로 이동합니다.");
	}
</script>
</head>
<body>
	<!-- header start -->
	<iframe src="http://localhost:9000/cgv/header.jsp"  scrolling="no" frameborder="0" width="100%" height="150px"></iframe>
	
	<div class="content">
		<section class="login">
			<h1>로그인</h1>
			<form name="loginForm" action="login_proc.jsp" method="post">
				<ul>
					<li>
						<label>아이디</label>
						<input type="text" name="id" id="id">
					</li>
					<li>
						<label>패스워드</label>
						<input type="password" name="pass" id="pass">
					</li>
					<li>
						<button type="button" class="btn_style" onclick="loginFormCheck()">로그인</button>
						<button type="reset" class="btn_style">다시쓰기</button>
					</li>
				</ul>
			
			</form>
		</section>		
		
	</div>
	
	<!-- footer start -->
	<iframe src="http://localhost:9000/cgv/footer.jsp"  scrolling="no" frameborder="0" width="100%" height="500px"></iframe>
</body>
</html>







