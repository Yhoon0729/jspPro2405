<%@page import="java.util.Date"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
	<h3>forEach 태그를 이용하여 List 객체 출력하기</h3>

	<%
	List<Integer> list = new ArrayList<>();
	for (int i = 1; i < 10; i++) {
		list.add(i * 10);
	}
	request.setAttribute("list", list);
	%>

	<c:forEach var="a" items="${list}">
		${a}&nbsp;&nbsp;&nbsp;
	</c:forEach>

	<c:forEach var="a" items="${list}" varStatus="stat">
		<c:if test="${stat.index == 0}">
			<p>index는 0입니다.</p>
		</c:if>
			${stat.count} - ${stat.index} = ${a}&nbsp;&nbsp;&nbsp;
	</c:forEach>

	<%
	Map<String, Object> map = new HashMap<>();
	map.put("name", "홍길동");
	map.put("today", new Date());
	map.put("age", 20);
	pageContext.setAttribute("map", map);
	%>

	<h3>forEach 태그를 이용하여 Map 객체 출력하기 Map.Entry</h3>
	<c:forEach var="m" items="${map}" varStatus="stat">
		${stat.count}:${m.key} = ${m.value} <br>
	</c:forEach>
	
	<h3>EL을 이용하여 Map 객체 출력하기</h3>
	name=${map.name}
	<br> today=${map.today}
	<br> age=${map.age}
	<br>
</body>
</html>