<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	<title>Home</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="text/javascript" src="/resources/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="/resources/bootstrap-3.1.1-dist/js/bootstrap.js"></script>
	<link rel="stylesheet" href="/resources/bootstrap-3.1.1-dist/css/bootstrap.css">
	<link rel="stylesheet" href="/resources/css/index.css">
	<script type="text/javascript">
		$(document).ready(function(){
			$("#submit_btn").click(function(){
				if($("#address_input").val() == ""){
					alert("주소를 넣어주세요.");
					return false;
				}else{
					$.ajax({
						url:"/address_check",
						type: "post",
						data:{
							address:$("#address_input").val()
						},
						success:function(result){
							console.log(result);
							$("#url").html(result);
						}
					})
				}
			})
		})
	</script>
</head>
<body>
<div id="wraper">
	<div id="header">
		<ul id="gnb">
			<li><a href="#" data-toggle="modal" data-target="#myModal_login">로그인</a></li>
			<li><a href="#" data-toggle="modal" data-target="#myModal_regist">회원가입</a></li>
		</ul>
	</div>
	<div id="main_content">
		<div id="address_form">
			<h1 id="title">URL 주소 줄이기</h1>
			<input id="address_input" type="text" class="form-control" placeholder="Address insert!">
			<h1 id="result_address">-> <span id="url"></span></h1>
			<input id="submit_btn" type="button" class="btn btn-primary btn-lg" value="줄이기" />
		</div>
	</div>
</div>
<%@ include file="/resources/include/main_modal.jsp" %>
</body>
</html>
