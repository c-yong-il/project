<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기</title>



<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />    
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>





<script>
	
	
	function itemSum(frm)
	{
	   var price1 = 0;
	   var price2 = 0;
	   var value1 = frm.sh1.value;
	   var value2 = frm.bh1.value;
	   
	  
		if( frm.ticket1.checked == true ){
		   		price1 = frm.ticket1.value;
		}
	   
	   if( frm.ticket2.checked == true ){
		   price2 = frm.ticket2.value;
	   }
	   
	   
	   frm.start.value = ((price1*value1) + (price2*value2));
	   frm.totalPrice.value = ((frm.start.value) + (frm.free.value));
	   
	}
	
	$()
	
	function itemSum1(frm){
		var price3 = 0;
	    var price4 = 0;
	    var value3 = frm.sh2.value;
	    var value4 = frm.bh2.value;
	    
		if( frm.ticket3.checked == true ){
			   price3 = frm.ticket3.value;
		   }else{
			   frm.ticket3.checked == false
		   }
		
	    if( frm.ticket4.checked == true ){
		    price4 = frm.ticket4.value;
	    }
		
		frm.free.value = ((price3*value3) + (price4*value4));
		frm.totalPrice.value = (frm.start.value) + (frm.free.value);
	}
	
	function totalSum(frm){
		
		frm.totalPrice.value = frm.start.value + frm.free.value;
		
	}
	

  $(function() {
    $( "#calendar" ).datepicker();
   // showAnim
   //옵션  : 매개변수값 2번째가 옵션의 타입이며 3번째 항목은 옵션에 대한 설정 값
    $( "#calendar" ).datepicker( "option", "dateFormat", "yy년-mm월-dd일" ); //데이터 포맷으로 날짜의 반환 타입을 지정
    $( "#calendar" ).datepicker( "option", "minDate", "slideDown" );     //달력의 표시 형태
  });
</script>

</head>
<body>

<!-- header start -->
	<iframe src="http://localhost:9000/cgv/header.jsp"  scrolling="no" frameborder="0" width="100%" height="150px"></iframe>

<h2>예매 옵션</h2>

	<form action="reserv.jsp">
	
	
		<p>
			<span>날짜:</span> <input type="text" id="calendar" name="calender">
		</p>
			
		<p>
			<span>입장권:</span> 
			<input type="checkbox" name="ticket1" value="20000"  onClick="itemsum(this.form);">소인
			<select name="sh1" class="h" onChange="itemSum(this.form);">
				<option value="0">선택</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
			</select>
			<input type="checkbox" name="ticket2" value="30000" onClick="itemsum(this.form);">대인
			<select name="bh1" class="h" onChange="itemSum(this.form);">
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
			<span>자유이용권:</span> 
			<input type="checkbox" name="ticket3" value="40000" onClick="itemsum1(this.form);">소인
			<select name="sh2" class="h" onChange="itemSum1(this.form);">
				<option value="0">선택</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
			</select>
			<input type="checkbox" name="ticket4" value="60000" onClick="itemsum1(this.form);">대인
			<select name="bh2" class="h" onChange="itemSum1(this.form);">
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
			<span>입장권 총가격:</span> <input type="text" name="start"  size="20" readonly>
		</p>
		<p>
			<span>자유이용권 총가격:</span> <input type="text" name="free"  size="20" readonly>
		</p>
		<p>
			<span>전체 총가격:</span> <input type="text" name="totalPrice" size="20" readonly>
		</p>
			<input type="submit" value="예매하기">
	</form>

<!-- footer start -->
	<iframe src="http://localhost:9000/cgv/footer.jsp"  scrolling="no" frameborder="0" width="100%" height="500px"></iframe>
</body>
</html>
