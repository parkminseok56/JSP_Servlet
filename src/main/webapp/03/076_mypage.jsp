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
if(session.getAttribute("loginUser")==null){
	response.sendRedirect("071_LoginForm.jsp");
}else{
%>
    아이디 : <%= session.getAttribute("loginUser") %> <br>
    성명   : 홍길동 <br>
    주소   : 서울특별시 서대문구 .. <br>
    전화번호 : 010-7224-9496 <br>
    주민등록번호 : 960909-1185610 <br>
    <input type="button" value="로그인">
<% 
}


%>




</body>
</html>