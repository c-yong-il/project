<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />    
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="http://localhost:9000/Second_project/js/reserv.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="http://localhost:9000/cgv/css/reserv.css" rel="stylesheet">



<title>예매하기</title>
</head>
<body>

<div id="all" class="all">
	<form name="reservForm" action="reserv_proc.jsp" method="post">

		<ul>
			<li>
				<label class="label_style">날짜</label> <input type="text" id="rdate" name="rdate" class="text">
			</li>
        	<li>
	        	<label class="label_style">입장권</label>
	            <input type="checkbox" class="input1" name="rss" value="0" id="rss" onchange="change()">
	            <label for="rss"> <span></span> 소인</label>
	            <label class="label_style2">인원</label>
	        	<select id="num1" name="num1" onchange="change1()">
	            <option value="0">0</option>
	            <option value="1">1</option>
	            <option value="2">2</option>
	            <option value="3">3</option>
	            <option value="4">4</option>
	            <option value="5">5</option>
	        	</select>
	        	<br>
	        	<label class="label_style1" >입장권</label>
	            <input type="checkbox" class="start" name="rsb" value="0" id="rsb" onchange="change()">
	            <label for="rsb"> <span></span> 대인</label>
	            <label class="label_style2">인원</label>
	            <select id="num2" name="num2" onchange="change1()">
	            <option value="0">0</option>
	            <option value="1">1</option>
	            <option value="2">2</option>
	            <option value="3">3</option>
	            <option value="4">4</option>
	            <option value="5">5</option>
	            </select>
	        </li>
        
        	<li>
	        	<label class="label_style">자유이용권</label>
	            <input type="checkbox" class="free" name="rfs" value="0" id="rfs" onchange="change()">
	            <label for="rfs"> <span></span> 소인</label>
	            <label class="label_style2">인원</label>
	        	<select id="num3" name="num3" onchange="change1()">
	            <option value="0">0</option>
	            <option value="1">1</option>
	            <option value="2">2</option>
	            <option value="3">3</option>
	            <option value="4">4</option>
	            <option value="5">5</option>
	        	</select>
	        	<br>
	        	<label class="label_style1" >자유이용권</label>
            	<input type="checkbox" class="free" name="rfb" value="0" id="rfb" onchange="change()">
            	<label for="rfb"> <span></span> 대인</label>
				<label class="label_style2">인원</label>
	            <select id="num4" name="num4" onchange="change1()">
	            <option value="0">0</option>
	            <option value="1">1</option>
	            <option value="2">2</option>
	            <option value="3">3</option>
	            <option value="4">4</option>
	            <option value="5">5</option>
	            </select>
        	</li>
        	<li>
        		<label class="label_style">총 가격 : </label><input type="text" name="total" id="total" class="text" readonly>
        	</li>
        	<li>
       			<input type="button" class="btn_style" value="예매하기" onclick="reservFormCheck()">
        	</li>
        
        </ul>
	</form>
</div>
        
        
</body>
</html>

