<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 상세 페이지</title>
</head>
<body>
<h2>공지 사항</h2>
	<table border="1">
		<tr>
			<th>제목</th>
			<td>${noticeVo.title}</td>
		</tr>
		<tr>
			<th>공지한 날짜</th>
			<td><fmt:formatDate value="${noticeVo.regdate}" pattern="yyyy.MM.dd" /></td>
		</tr>
		<c:if test="${classify == 3}">
			<tr>
				<th>볼 권한이 있는 아이디</th>
				<td>${noticeVo.authority}</td>
			</tr>
		</c:if>
		<tr>
			<th>내용</th>
			<td>${noticeVo.content}<br>
			<c:if test="${noticeVo.reviewNum != ''}">
				<a href="javascript:openReview();">해당 리뷰 보기</a>
			</c:if>
			</td>
		</tr>
	</table>
	<p>
	<c:if test="${classify == 3}">
		<input type="button" value="공지 수정" onclick="location.href='/project/mypage/editNotice/${noticeVo.noticeNum}'"/>
		<input type="button" value="공지 삭제" onclick="openDelete()"/>
	</c:if>
	</p>
	<script type="text/javascript">
		function openReview(){
			var popWidth = 600;
			var popHeight = 400;
			var winHeight = document.body.clientHeight;
			var winWidth = document.body.clientWidth;
			var winX = window.screenLeft;
			var winY = window.screenTop;
			var popX = winX + (winWidth - popWidth)/2;
			var popY = winY + (winHeight - popHeight)/2;
			url="../showReview/"+${noticeVo.reviewNum};
			var openWin = window.open(url, "showReview", "left="+popX+",top="+popY+",width="+popWidth+",height="+popHeight);
		}
	
		function openDelete(){
			var popWidth = 300;
			var popHeight = 200;
			var winHeight = document.body.clientHeight;
			var winWidth = document.body.clientWidth;
			var winX = window.screenLeft;
			var winY = window.screenTop;
			var popX = winX + (winWidth - popWidth)/2;
			var popY = winY + (winHeight - popHeight)/2;
			url="../deleteNoticeProcess/"+${noticeVo.noticeNum};
			var openWin = window.open(url, "deleteNoticeProcess", "left="+popX+",top="+popY+",width="+popWidth+",height="+popHeight);
		}
	</script>
</body>
</html>