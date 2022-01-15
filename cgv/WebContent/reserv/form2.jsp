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
	
	$(document).ready(function(){
	
	    // check box 눌렀을 경우 정보 담아주는 변수
	    var cart = {
	        buyList : [],
	        init : function() {
	            //buyList 초기화
	            this.buyList = [];
	        },
	        getBuyList : function(obj) {
	            return this.buyList;
	        },
	        getFindIndex : function(cd) {
	            //배열 중복 검색
	            var fIdx = -1;
	            this.buyList.forEach(function(item, idx, ary) {
	                if(item.code == cd) {
	                    fIdx = idx;
	                }
	            });
	            return fIdx;
	        },
	        addBuyList : function(obj) {
	            var fIdx = this.getFindIndex(obj.code);
	            if(fIdx == -1) {
	                this.buyList.push(obj);
	            } else {
	                this.buyList[fIdx] = obj;
	            }
	            this.render();
	        },
	        deleteBuyList : function(cd) {
	            this.buyList.splice(this.getFindIndex(cd), 1);
	            this.render();
	        },
	        getTotalPay : function() {
	            //총 결제금액 계산
	            var totalQty = 0;
	            var totalPrice = 0;
	            
	            this.buyList.forEach(function(item, idx, ary) {
	                totalQty += Number(item.qty);
	                totalPrice += Number(item.price)*Number(item.qty);
	            });
	            return {
	                totalQty : totalQty,
	                totalPrice : totalPrice
	            };
	        },
	        render : function() {            
	            // 주문 table 그리기
	            var order = $('#tbl-order tbody');
	            if(this.buyList.length > 0) {
	                var html = [];
	                this.buyList.forEach(function(item, idx, ary) {
	                	
	                    html.push([
	                        '<tr data-cd="', item.cd ,'">',                        
	                        '<td>', item.title, '</td>',
	                        '<td>', item.age, '</td>',
	                        '<td>', item.price, '</td>',
	                        '<td>', item.qty, '</td>',
	                        '<td>', Number(item.price)*Number(item.qty), '</td>',
	                        '</tr>'
	                    ].join(''));
	                });
	                order.html(html);
	
	                // 총 결제금액&수량 table 그리기
	                var total = this.getTotalPay();
	                $('#total-qty').val(total.totalQty);
	                $('#total-amt').val(total.totalPrice);
	                $('#tbl-order').show();                
	
	            } else {
	                // 주문내역 table 숨기기
	                $('#tbl-order').hide();                
	     
	                // 주문내역 지우기
	                order.empty();
	     
	                // 총 결제정보 지우기
	                $('#total-qty').val(0);
	                $('#total-amt').val(0);
	            }            
	        }
	    };
	
	    // 수량 클릭 시
	    $('.edt-qty').on('change', function() {
	        var tr = $(this).closest('tr');
	        var age = tr.children('td:eq(1)').text();
	        var title = tr.children('td:eq(2)').text();
	        var price = Number(tr.children('td:eq(3)').text());
	        var qty = Number(tr.children('td:eq(4)').find('input').val());
	
	        // 수량이 0 초과하는 경우 buyList에 추가 
	        // 수량이 0 이하인 경우 buyList에서 삭제
	        if(qty > 0) {
	            var obj = {
	                age : age,
	                title : title,
	                price : price,
	                qty : qty
	            }
	            cart.addBuyList(obj);
	        } else {
	            cart.deleteBuyList(age);
	        }
	        console.log(cart.getBuyList());
	    });
	
	    
	
	}); //end document ready
	
	$.fn.serializeObject = function() {
	    "use strict";
	    
	    var result = {};
	    var extend = function(i, element) {
	        var node = result[element.name];
	
	        if ('undefined' !== typeof node && node !== null) {
	            if ($.isArray(node)) {
	                node.push(element.value);
	            } else {
	                result[element.name] = [ node, element.value ];
	            }
	        } else {
	            result[element.name] = element.value;
	        }
	    };
	
	    $.each(this.serializeArray(), extend);
	    return result;
	};
  
</script>

</head>

<style>
    table th, td{ 
        text-align: center;
    }
</style>

<body>

<!-- header start -->
	<iframe src="http://localhost:9000/cgv/header.jsp"  scrolling="no" frameborder="0" width="100%" height="150px"></iframe>


		    <div class="container">
        <h3>Buy Ticket</h3>    
        <table class="table table-bordered" id="tbl-product">
            <colgroup>
                <col style="width: 20%;" />
                <col style="width: 20%" />
                <col style="width: 20%" />
                <col style="width: 20%" />
                <col style="width: 20%" />
            </colgroup>
            <tr>             
                <th>checkbox</th>   
                <th>나이</th>   
                <th>티켓</th>
                <th>가격</th>
                <th>수량</th>
            </tr>
            <tr>                
                <td><input type="checkbox" name="fruit"></td>
                <td>소인</td>
                <td>입장권</td>
                <td>20000</td>
                <td><input type="number" class="edt-qty" value="0" min="0"></td>
            </tr>
            <tr>       
                <td><input type="checkbox" name="fruit"></td>         
                <td>대인</td>
                <td>입장권</td>
                <td>30000</td>
                <td><input type="number" class="edt-qty" value="0" min="0"></td>
            </tr>
            <tr>         
                <td><input type="checkbox" name="fruit"></td>       
                <td>소인</td>
                <td>자유이용권</td>
                <td>30000</td>
                <td><input type="number" class="edt-qty" value="0" min="0"></td>
            </tr>
            <tr>         
                <td><input type="checkbox" name="fruit"></td>       
                <td>대인</td>
                <td>자유이용권</td>
                <td>50000</td>
                <td><input type="number" class="edt-qty" value="0" min="0"></td>
            </tr>
        </table>
                   
        <table class="table table-bordered" id="tbl-order" style="display: none;">            
            <thead>                
                <th>티켓</th>
                <th>나이</th>
                <th>가격</th>
                <th>수량</th>
                <th>금액</th>
            </thead>
            <tbody></tbody>
        </table>        
        <table class="table table-bordered" id="tbl-total">
            <thead>
                <tr>
                    <th>총수량</th>
                    <th>총금액</th>
                </tr>
            </thead>
            <tbody>
                <td><input type="number" readonly="readonly" id="total-qty" value="0"></td>
                <td><input type="number" readonly="readonly" id="total-amt" value="0"></td>
            </tbody>            
        </table>
    </div>    
      


<!-- footer start -->
	<iframe src="http://localhost:9000/cgv/footer.jsp"  scrolling="no" frameborder="0" width="100%" height="500px"></iframe>
	
	

	
	
</body>
</html>
