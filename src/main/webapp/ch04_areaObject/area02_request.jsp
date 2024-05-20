<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- pageContext => null, page 바뀜으로 저장된 값 날라감 -->
<%= pageContext.getAttribute("page") %><br>
<%= request.getAttribute("request") %><br>
<%= session.getAttribute("session") %><br>
<%= application.getAttribute("application") %><br>
</body>
</html>