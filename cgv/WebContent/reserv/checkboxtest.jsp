<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />    
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>


<script>
  
var sb,ss,fs,fb,totalPrice,num1,num2,num3,num4,sum1,sum2,sum3,sum4;

	function change1(){
	  
		sum1,sum2,sum3,sum4=0;
       sb=document.getElementById("sb");
       ss=document.getElementById("ss");
       fs=document.getElementById("fs");
       fb=document.getElementById("fb");
       totalPrice=document.getElementById("totalPrice");
       num1=document.getElementById("num1");
       num2=document.getElementById("num2");
       num3=document.getElementById("num3");
       num4=document.getElementById("num4");
       if(ss.checked){
    	   sum1=ss.value*num1.value;
       }
       if(sb.checked){
    	   sum2=sb.value*num2.value;
       }
       if(fs.checked){
    	   sum3=fs.value*num3.value;
       }
       if(fb.checked){
    	   sum4=fb.value*num4.value;
       }
       totalPrice.value=sum1+sum2+sum3+sum4;
   }
   
   function change(){
	   sum1,sum2,sum3,sum4=0;
	   sb=document.getElementById("sb");
       ss=document.getElementById("ss");
       fs=document.getElementById("fs");
       fb=document.getElementById("fb");
       totalPrice=document.getElementById("totalPrice");
       num1=document.getElementById("num1");
       num2=document.getElementById("num2");
       num3=document.getElementById("num3");
       num4=document.getElementById("num4");
       if(ss.checked){
    	   sum1=ss.value*num1.value;
       }else{
    	   sum1=0;
    	   $("#num1 option:eq(0)").prop("selected", true);
       }
       if(sb.checked){
    	   sum2=sb.value*num2.value;
       }else{
    	   sum2=0;
           $("#num2 option:eq(0)").prop("selected", true);
       }
       if(fs.checked){
    	   sum3=fs.value*num3.value;
       }else{
    	   sum3=0;
    	   $("#num3 option:eq(0)").prop("selected", true);
       }
       if(fb.checked){
    	   sum4=fb.value*num4.value;
       }else{
    	   sum4=0;
           $("#num4 option:eq(0)").prop("selected", true);
       }
       totalPrice.value=sum1+sum2+sum3+sum4;
   }
   
   
   
   $(function() {
	    $( "#calendar" ).datepicker();
	   // showAnim
	   //옵션  : 매개변수값 2번째가 옵션의 타입이며 3번째 항목은 옵션에 대한 설정 값
	    $( "#calendar" ).datepicker( "option", "dateFormat", "yy년-mm월-dd일" ); //데이터 포맷으로 날짜의 반환 타입을 지정
	    $( "#calendar" ).datepicker( "option", "minDate", "slideDown" );     //달력의 표시 형태
	  });
   
</script>
<title>예매하기</title>
</head>
<body>

<!-- header start -->
	<iframe src="http://localhost:9000/cgv/header.jsp"  scrolling="no" frameborder="0" width="100%" height="150px"></iframe>


<form action="join_proc.jsp" method="post">
		
			<span>날짜:</span> <input type="text" id="calendar" name="calender">
		

        <p>
        	<span>입장권</span>
            <input type="checkbox" class="goodslist" name="ss" value="20000" id="ss" onchange="change()">소인
            <span>인원</span>
        	<select id="num1" name="num1" onchange="change1()">
            <option value="0">0</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        </select>
            <input type="checkbox" class="goodslist" name="sb" value="30000" id="sb" onchange="change()">대인
            <span>인원</span>
            <select id="num2" name="num2" onchange="change1()">
            <option value="0">0</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        </select>
        </p>
        
        
        <p>
        	<span>자유이용권</span>
            <input type="checkbox" class="goodslist" name="fs"value="40000" id="fs" onchange="change()">소인
            <span>인원</span>
        	<select id="num3" name="num3" onchange="change1()">
            <option value="0">0</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        </select>
            <input type="checkbox" class="goodslist" name="fb" value="60000" id="fb" onchange="change()">대인
            <span>인원</span>
            <select id="num4" name="num4" onchange="change1()">
            <option value="0">0</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        </select>
        </p>
        
        <span>총 가격 : </span><input type="text" name="totalPrice" id="totalPrice" readonly>
        
        <input type="submit" value="예매하기" onclick="location.href='reserv_result.jsp'">
        
</form>
        
<!-- footer start -->
	<iframe src="http://localhost:9000/cgv/footer.jsp"  scrolling="no" frameborder="0" width="100%" height="500px"></iframe>        
        
        
</body>
</html>

