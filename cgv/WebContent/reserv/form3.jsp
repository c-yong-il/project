<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기</title>



<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />    
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>



<script>

let values = new Array(2); // 배열을 선언하여 값 불러오기
values[0] = parseInt(document.getElementById('tk1').value);
values[1] = parseInt(document.getElementById('tk2').value);

let total = parseInt(document.getElementById('total').value);

function sum(num) {
	if(document.pc.elements[num].checked == true){
		total = total + values[num];
	}else{
		total = total - values[num];
	}
	document.pc.elements[2].value = total;	
}

</script>

</head>



<body>

<!-- header start -->
	<iframe src="http://localhost:9000/cgv/header.jsp"  scrolling="no" frameborder="0" width="100%" height="150px"></iframe>

<input type="checkbox" name="ticket1" id="tk1" value="20000" onclick="sum(0)">소인
<input type="checkbox" name="ticket1" id="tk2" value="50000" onclick="sum(1)">대인

<input type="text" id="total" size="5" value="0">합계



<p>
	<span>입장권</span>
	<select name="sh1" class="h">
				<option value="0">선택</option>
				<option value="1">소인</option>
				<option value="2">대인</option>
	</select>
	
	<span>인원수</span>
	<select name="sh1" class="h">
				<option value="0">선택</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
	</select>
</p>
<p>
	<span>자유이용권</span>
	<select name="sh1" class="h">
				<option value="0">선택</option>
				<option value="1">소인</option>
				<option value="2">대인</option>
	</select>
	
	<span>인원수</span>
	<select name="sh1" class="h">
				<option value="0">선택</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
	</select>
</p>

<!-- footer start -->
	<iframe src="http://localhost:9000/cgv/footer.jsp"  scrolling="no" frameborder="0" width="100%" height="500px"></iframe>
	
	

	
	
</body>
</html>
