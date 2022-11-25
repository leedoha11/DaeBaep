<%@page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko-kr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>사용자 관리 - 회원 가입</title>
<link rel="stylesheet" href="/gymsystem/css/custom.css">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
	function userCreate() {
		if (form.userId.value == "") {
			alert("사용자 ID를 입력하십시오.");
			form.userId.focus();
			return false;
		}
		if (form.password.value == "") {
			alert("비밀번호를 입력하십시오.");
			form.password.focus();
			return false;
		}
		if (form.password.value != form.password2.value) {
			alert("비밀번호가 일치하지 않습니다.");
			form.name.focus();
			return false;
		}

		var emailExp = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		if (emailExp.test(form.email.value) == false) {
			alert("이메일 형식이 올바르지 않습니다.");
			form.email.focus();
			return false;
		}

		form.submit();
	}
</script>
</head>
<body>
	<!-- navigation bar -->
	<%@include file="/WEB-INF/navbar.jsp"%>

	<div class="container">

		<!-- 회원가입이 실패한 경우 exception 객체에 저장된 오류 메시지를 출력 -->
		<div class="row col-lg-12">
			<c:if test="${registerFailed}">
				<h6 class="text-danger">
					<c:out value="${exception.getMessage()}" />
				</h6>
			</c:if>
		</div>

		<!-- registration form  -->
		<section class="container mt-3" style="max-width: 560px;">
			<form name="form" method="POST"
				action="<c:url value='/user/register'/>">
				<div class="form-group row">
					<label for="userId" class="col-lg-2 col-form-label">아이디</label>
					<div class="col-lg-10">
						<input type="text" name="userId" class="form-control"
							placeholder="아이디">
					</div>
				</div>
				<div class="form-group row">
					<label for="password" class="col-lg-2 col-form-label">비밀번호</label>
					<div class="col-lg-10">
						<input type="password" name="password" class="form-control"
							placeholder="password">
					</div>
				</div>
				<div class="form-group row">
					<label for="password2" class="col-lg-2 col-form-label">비밀번호
						확인</label>
					<div class="col-lg-10" style="margin: auto">
						<input type="password" name="password2" class="form-control"
							placeholder="비밀번호 확인">
					</div>
				</div>
				<div class="form-group row">
					<label for="email" class="col-lg-2 col-form-label">이메일</label>
					<div class="col-lg-10">
						<input type="text" name="email" class="form-control"
							placeholder="you@example.com"
							<c:if test="${registerFailed}">value="${user.email}"</c:if>>
					</div>
				</div>

				<br>
				<div class="form-group">
					<input type="button" class="btn btn-primary" value="가입"
						onClick="userCreate()">
				</div>
			</form>
		</section>
	</div>
	
	<!-- footer -->
	<%@include file="/WEB-INF/footer.jsp"%>
</body>
</html>
