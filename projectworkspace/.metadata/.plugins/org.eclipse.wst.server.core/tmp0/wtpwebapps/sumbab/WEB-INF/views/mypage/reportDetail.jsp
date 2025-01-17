<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고 상세 페이지</title>
</head>
<body>
<h2>신고 내역</h2>
	<table border="1">
		<tr>
			<th>신고자</th>
			<td>${reportVo.reporter}</td>
		</tr>
		<tr>
			<th>피신고자</th>
			<td>${reportVo.id}</td>
		</tr>
		<tr>
			<th>신고한 날짜</th>
			<td><fmt:formatDate value="${reportVo.regdate}" pattern="yyyy.MM.dd" /></td>
		</tr>
		<tr>
			<th>신고 사유</th>
			<td>${reportVo.reason}</td>
		</tr>
		<tr>
			<th>리뷰 내용</th>
			<td>${reportVo.content}</td>
		</tr>
	</table>
	<p>
	<select id="selectbox">
		<option value="4">피신고자 리뷰 작성 기능 정지</option>
		<option value="5">신고자 신고 기능 정지</option>
	</select>&nbsp;&nbsp;
	<input type="button" value="신고 처리" onclick="handleWarning()"/>
	</p>
	<input type="text" name="id">에게 &nbsp;&nbsp;<input type="submit" value="공지 올리기" />

	<script type="text/javascript">
		function handleWarning(){
			var popWidth = 600;
			var popHeight = 400;
			var winHeight = document.body.clientHeight;
			var winWidth = document.body.clientWidth;
			var winX = window.screenLeft;
			var winY = window.screenTop;
			var popX = winX + (winWidth - popWidth)/2;
			var popY = winY + (winHeight - popHeight)/2;
			url="../changeClassify/"+$("#selectbox option:selected").val();
			var openWin = window.open(url, "handleWarning", "left="+popX+",top="+popY+",width="+popWidth+",height="+popHeight);
		}
	</script>
</body>
</html>