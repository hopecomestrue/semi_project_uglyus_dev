<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.veg.hjj.member.dao.*"%>
<%@ page import="com.veg.hjj.member.dto.*"%>
<%@ page import="com.veg.ojy.mypage.dao.*"%>
<%@ include file="/views/admin/common/header.jsp" %>
<%
Member member = (Member) request.getAttribute("member");
%>

<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jycss/css/main.css" />
<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jycss/css2/open-iconic-bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jycss/css2/animate.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jycss/css2/owl.carousel.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jycss/css2/owl.theme.default.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jycss/css2/magnific-popup.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jycss/css2/aos.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jycss/css2/ionicons.min.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jycss/css2/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jycss/css2/jquery.timepicker.css">


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jycss/css2/flaticon.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jycss/css2/icomoon.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/jycss/css2/style.css">
</head>
<body> --%>
	<div class="updatePassword-container">
		<div class="row">
			<div class="col-12 d-flex justify-content-center">
				<div class="login-form">
					<h2>회원정보 상세보기</h2>
					<form
						action="<%=request.getContextPath()%>/views/admin/memberManagement/memberModify.jsp"
						method="post" onsubmit="return goBack()">
						<div class="group-input">
							<label for="userId">아이디</label> <input type="text"
								name="memberId" value="<%=member.getMemberId()%>">
							<!-- 세션값아이디 히든으로 넘기기 -->
						</div>
						<div class="group-input">
							<label for="username">이름</label> <input type="text" name="name"
								value="<%=member.getMemberName()%>">
						</div>
						<div class="group-input">
							<label for="pass">연령</label> <input type="text"
								value="<%=member.getMemberAge()%>" name="age">
						</div>
						<div class="group-input">
							<label for="pass">휴대폰번호</label> <input type="text" name="phone"
								value="<%=member.getMemberPhone()%>">
						</div>
						<div class="group-input">
							<label for="pass">이메일</label> <input type="text"
								value="<%=member.getMemberEmail()%>" name="email">
						</div>
						<div class="group-input">
							<label for="pass">주소</label> <input type="text"
								value="<%=member.getAddress()%>" name="address">
						</div>
						<div class="group-input">
							<label for="pass">서비스 동의</label> <select name="agree">
								<option value="Y"
									<%=member.getServiceAgree().equals("Y") ? "selected" : ""%>>동의</option>
								<option value="N"
									<%=member.getServiceAgree().equals("N") ? "selected" : ""%>>비동의</option>
							</select>
						</div>
						<br>
						<button type="submit" class="btn  btn-primary">닫기</button>
						<!-- <button type="submit" class="primary">닫기</button> -->
					</form>
				</div>
			</div>
		</div>
	</div>

	<script>
		function goBack() {
			window.history.back();
			return false; // 폼이 서버로 전송되는 것을 막기 위해 false를 반환합니다.
		}
	</script>
	<script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<%@ include file="/views/admin/common/footer.jsp" %>