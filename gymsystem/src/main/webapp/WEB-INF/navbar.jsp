<%@page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 네비게이션 바 -->
<!-- 필요한 곳에 include -->

<link rel="stylesheet" href="/gymsystem/css/custom.css">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="index.jsp">시스템 이름</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbar">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div id="navbar" class="collapse navbar-collapse">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">메인</a></li>

			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" id="navbardrop"
				data-toggle="dropdown" href="<c:url value='/user/list' />"> 회원관리 </a>
				<div class="dropdown-menu">
					<c:if test="${userId ne null}">
						<a class="dropdown-item" href="<c:url value='/user/logout'/>">로그아웃 ( ${userId} )</a>
					</c:if>
					<c:if test="${userId eq null}">
						<a class="dropdown-item" href="<c:url value='/user/login/form' />">로그인</a>
						<a class="dropdown-item" href="<c:url value='/user/register' />">회원가입</a>
					</c:if>
				</div></li>
		</ul>
		<form action="./index.jsp" method="get"
			class="form-inline my-2 my-lg0">
			<input type="text" class="form-control mr-sm-2" name="search"
				placeholder="내용을 입력하세요." aria-label="search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
		</form>

	</div>

</nav>

