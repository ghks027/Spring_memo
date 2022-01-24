<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel = "stylesheet" href = "/static/css/style.css" type = "text/css">

</head>
<body>
	<div id = "warp" class = "bg-info">
	
		<c:import url = "/WEB-INF/jsp/include/header.jsp" />
	
		<section class = "content d-flex justify-content-center">
			<div class = "join-box my-5">
				<div class = "display-4">회원가입</div>
				
				<!-- 아이디, 비밀번호, 비밀번호 확인, 이름, 이메일 -->
				<input type = "text" class = "form-control mt-3" placeholder = "아이디">
				<input type = "password" class = "form-control mt-3" placeholder = "비밀번호">
				<input type = "password" class = "form-control mt-3" placeholder = "비밀번호 확인">
				<input type = "text" class = "form-control mt-3" placeholder = "이름">
				<input type = "text" class = "form-control mt-3" placeholder = "이메일">
				
				<button type = "button" class = "btn btn-info btn-block mt-3">회원가입</button>
			</div>
		
		</section>
		
		<c:import url = "/WEB-INF/jsp/include/footer.jsp" />
	</div>
</body>
</html>