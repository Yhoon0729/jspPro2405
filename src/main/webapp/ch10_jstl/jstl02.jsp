<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core 태그 연습 : 반복 구문</title>
</head>
<body>
	<h3>반복관련 태그 : forEach</h3>
	<c:forEach var="aaa" begin="1" end="10" step="2">
		${aaa}&nbsp;&nbsp;&nbsp;
	</c:forEach>

	<h3>forEach 태그를 이용하여 2단부터 9단까지의 구구단 출력하기(중첩)</h3>
	<c:forEach var="i" begin="2" end="9" step="1">
		<h4>${i}단</h4>
		<c:forEach var="j" begin="1" end="9" step="1">
			${i} * ${j} = ${i*j}&nbsp;&nbsp;&nbsp;
		</c:forEach>
	</c:forEach>
	
	<h3>forEach 태그를 이용하여 1부터 100까지의 합 구하기</h3>
	<c:forEach var="i" begin="1" end="100" step="1">
		<c:set var="sum" value="${sum+i}">
		</c:set>
	</c:forEach>
	1부터 100 까지의 합 : ${sum}
</body>
</html>