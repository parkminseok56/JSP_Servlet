<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05_Whene here.jsp</title>
</head>
<body>

	<c:if test="${param.fruit==1}"></c:if>

	<c:choose>
		<c:when test="${param.fruit==1 }">
			<!-- if  -->
			<span style="color: red; font-size: 180%; font-weight: bold;">사과</span>
		</c:when>
		<c:when test="${param.fruit==2 }">
			<!-- else if  -->
			<span style="color: green; font-size: 180%; font-weight: bold;">멜론</span>
		</c:when>
		<c:when test="${param.fruit==3 }">
			<!-- else if  -->
			<span style="color: blue; font-size: 180%; font-weight: bold;">바나나</span>
		</c:when>
		<c:otherwise> <!-- else  --> <span
			style="color: sliver; font-size: 180%; font-weight: bold;">기타</span>
		</c:otherwise>
	</c:choose>
</body>
</html>