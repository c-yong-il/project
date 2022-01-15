<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Git-Hub test</title>
<link href="http://localhost:9000/cgv/css/cgv.css" rel="stylesheet">
</head>
<body>
	<!-- header start -->
	<iframe src="header.jsp"  scrolling="no" frameborder="0" width="100%" height="200px"></iframe>
	<%--
		<jsp:include page="상대경로-파일경로호출"></jsp:include>
		<%@ include file="상대경로-파일경로호출" %>
	--%>


	<!-- content start  -->
	<div class="content">
		<!-- carousel -->
		<div class="bg_carousel"> <!-- background-image 추가 100% -->
			<div class="carousel">
				<!-- <h3>Carousel 추가부분</h3>-->
				<img src="http://localhost:9000/cgv/images/16347931161070.jpg">
			</div>
		</div>
		<!-- movie selection -->
		<section>
			<div><img src="http://localhost:9000/cgv/images/h3_movie_selection.gif"></div>
			<iframe width="710" height="400" src="https://www.youtube.com/embed/SndPCQiu5gs"
			title="YouTube video player" frameborder="0"
			allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
			<img src="http://localhost:9000/cgv/images/1201_240x388.jpg">
		</section>

		<!-- event -->
		<section>
			<div><img src="http://localhost:9000/cgv/images/h3_event.gif"></div>
			<div class="event1">
				<img src="http://localhost:9000/cgv/images/16170705205160.jpg">
				<img src="http://localhost:9000/cgv/images/16315139087750.jpg">
				<img src="http://localhost:9000/cgv/images/16315139088220.jpg">
				<img src="http://localhost:9000/cgv/images/16315179619950.jpg">
			</div>
			<div class="event2">
				<img src="http://localhost:9000/cgv/images/1109_226x259.jpg">
				<img src="http://localhost:9000/cgv/images/main_moviecollage.jpg">
				<img src="http://localhost:9000/cgv/images/16258186526120.png">
			</div>
		</section>
	</div>

	<!-- footer start -->
	<iframe src="footer.jsp"  scrolling="no" frameborder="0" width="100%" height="500px"></iframe>

</body>
</html>
