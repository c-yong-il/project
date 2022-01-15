<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV-회원가입</title>
<link href="http://localhost:9000/cgv/css/cgv.css" rel="stylesheet">
<script src="http://localhost:9000/cgv/js/cgv.js"></script>


<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script>
$( function() { $("#datepicker").datepicker({ 
	changeMonth: true, 
	changeYear: true, 
	minDate: '-50y', 
	nextText: '다음 달', 
	prevText: '이전 달', 
	yearRange: 'c-50:c+20', 
	showButtonPanel: true, 
	currentText: '오늘 날짜', 
	closeText: '닫기', 
	dateFormat: "yy-mm-dd", 
	showAnim: "slide", 
	showMonthAfterYear: true, 
	dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
	monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] 
	}); } ); 
	</script>

</head>
<body>
	<!-- header start -->
	<iframe src="http://localhost:9000/cgv/header.jsp"  scrolling="no" frameborder="0" width="100%" height="150px"></iframe>
	
	<div class="content">
		<section class="login">
			<h1>회원가입</h1>
			<form name="joinForm" action="join_proc.jsp" method="post">
			<ul>
			<li>
				<label>아이디</label>
				<input type="text" name="id" placeholder="*영문자숫자포함 8자이상" class="input1" id="id">
				<button type="button" class="btn_style2">중복확인</button>
			</li>
			<li>
				<label>비밀번호</label>
				<input type="password" name="pass" class="input1" id="pass">
			</li>
			<li>
				<label>비밀번호 확인</label>
				<input type="password" name="cpass" class="input1" id="cpass" onblur="passCheck()">
				<span id="passmsg"></span>
			</li>
			<li>
				<label>성명</label>
				<input type="text" name="name" class="input1" id="name">
			</li>
			<li>
				<label>생년월일</label>
				<input type="text" placeholder="*클릭하여 선택해주세요" name="datepicker" class="input1" id="datepicker" readonly>
			</li>
			<li>
				<label>성별</label>
				<div class="input2">
					<input type="radio" name="gender" value="m"> 남자
					<input type="radio" name="gender" value="f"> 여자
				</div>
			</li>
			<li>
				<label>이메일</label>
				<input type="text" name="email1" class="email" id="email1"> @
				<input type="text" name="email2" class="email" id="email2">
				<select class="email" id="email3" onchange="emailCheck()">
					<option value="choice">선택</option>
					<option value="naver.com">네이버</option>
					<option value="google.com">구글</option>
					<option value="daum.net">다음</option>
					<option value="self">직접입력</option>
				</select>
			</li>
			<li>
				<label>주소</label>
				<input type="text" name="addr1" class="addr" id="addr1">
				<button type="button" class="btn_style2">주소찾기</button>
			</li>
			<li>
				<label>상세주소</label>
				<input type="text" name="addr2" class="addr" id="addr2">
			</li>
			<li>
				<label>휴대폰</label>
				<span>
					<input type="radio" name="tel" value="skt"> SKT
					<input type="radio" name="tel" value="lgU+"> LGU+
					<input type="radio" name="tel" value="kt"> KT
				</span>
				<span>
					<select name="hp1" class="hp" id="hp1">
						<option value="choice">선택</option>
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="017">017</option>
					</select>
					- <input type="text" name="hp2" class="hp" id="hp2">
					- <input type="text" name="hp3" class="hp" id="hp3">
				</span>
			</li>
			<li>
				<label>취미</label>
				<div class="input2">
					<input type="checkbox" name="hobby" value="영화">영화보기
					<input type="checkbox" name="hobby" value="등산">등산하기
					<input type="checkbox" name="hobby" value="게임">게임하기
					<input type="checkbox" name="hobby" value="잠자기">잠자기
				</div>
			</li>
			<li>
				<label>자기소개</label>
				<textarea name="intro"  placeholder="*200자 이내로 작성해주세요"></textarea>
			</li>
			<li>
				<button type="button" class="btn_style" onclick="joinFormCheck()">가입하기</button>
				<button type="button" class="btn_style">다시입력</button>
			</li>
			
		</ul>	
			</form>
		</section>		
		
	</div>
	
	<!-- footer start -->
	<iframe src="http://localhost:9000/cgv/footer.jsp"  scrolling="no" frameborder="0" width="100%" height="500px"></iframe>
</body>
</html>







