<%@page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 헤더 파일 -->
<!-- 원하는 곳에 include 해서 쓰세요 -->
<!-- 시간표 관리, 내 시간표 항목 링크 주소 value 수정해야함! -->

<link rel="stylesheet" href="/gymsystem/css/custom.css">
<header class="text-center"
	style="background-color: #3F51B5; color: #FFFFFF;">
	<div class="p-5 container">
		<h1>로고 넣을 자리</h1>
	</div>
	<div style="background-color: #3A4BA7; color: #FFFFFF; font-size: 20px">
		<div class="container p-3">
			<div class="row">
				<div class="col">
					<a style="text-decoration: none;color: inherit;" href='<c:url value="" />'  >시간표 관리</a>
				</div>
				<div class="col">
					<a style="text-decoration: none;color: inherit;" href='<c:url value="" />' >내 시간표</a>
				</div>
				<div class="col">
					<a style="text-decoration: none;color: inherit;" href='<c:url value="/review/list" />' >리뷰</a>
				</div>
				<div class="col">
					<a style="text-decoration: none;color: inherit;" href='<c:url value="/user/logout" />' >로그아웃</a>
				</div>
			</div>
		</div>
	</div>
</header>