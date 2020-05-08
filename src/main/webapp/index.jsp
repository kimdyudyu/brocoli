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

<!--  	실제로 프로젝트에서 사용될 index.jsp 입니다.
 	**********수정/변경 금지************* -->
	<c:url var="MainPage" value="MainPage"/>
	<jsp:forward page="${MainPage}"/>
</body>
</html>