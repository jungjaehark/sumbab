<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 삭제</title>
</head>
<body>
	<form:form method="POST">
	해당 공지가 삭제 되어 이전 페이지로 이동합니다.<br><br>
	<input type="button" value="확인" onclick="javascript:opener.location.href='/project/mypage/noticePage';self.close()">
	</form:form>
</body>
</html>