<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_GetCookies.jsp</title>
</head>
<body>

<%
// 쿠키내용을 한 번에 다 얻어노는 명령- 쿠키 객체 배열로 얻어옴
Cookie[] cookies = request.getCookies();

for (Cookie c : cookies){
	out.println( "<h2>" + c.getName() + " : " + c.getValue() + "</h2>");
}
%>

</body>
</html>