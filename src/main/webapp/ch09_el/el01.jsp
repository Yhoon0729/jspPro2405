<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	session.setAttribute("test", "session test 속성 추가");
	session.setAttribute("today", new Date());
	// pageContext > request > session > application 순서로 key를 찾음
	%>
	<form action="el02.jsp" method="post">
		이름: <input type="text" name="name" value="홍길동">
		<input type="submit" value="전송">
	</form>
</body>
</html>