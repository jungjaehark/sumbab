<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인-검색하기</title>
</head>
<body>
	<h1>음식점/카페 찾아보기</h1>
	가게이름, 메뉴, 지역, 해시태그 등을 검색해 보세요!
	<br> 해시태그 검색은 앞에 #를 붙여서 검색하세요.
	<form:form method="post" action="listByKeywords" commandName="searching">
		<input type="text" placeholder="키워드를 입력하세요."><input
			type="submit" value="검색">
	</form:form>
</body>
</html>