<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 각자 자신의 index 파일인지 반드시 확인후 forward할 경로를 수정하세요.  -->
	<c:url var="Main" value="loginPage.mn"/>
	<jsp:forward page="${Main }"/>
</body>
</html>