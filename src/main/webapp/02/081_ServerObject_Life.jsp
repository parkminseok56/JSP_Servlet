<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>081_ServerObeject_Life.jsp</title>
</head>
<body>

<%
pageContext.setAttribute("name","page man"); //pageContext : 현재 페이지까지
request.setAttribute("name","request man"); //request : 다음 페이지까지
session.setAttribute("name","session man"); //session : 브라우져가 닫힐 때 까지
application.setAttribute("name","application man"); //서바가 꺼지거나 리스타또 될 때 까지

System.out.println("firstPage.jsp : ");
System.out.println("First의 pageContext 객체 :" + pageContext.getAttribute("name"));
System.out.println("First의 request 객체 :" + request.getAttribute("name"));
System.out.println("First의 session 객체 :" + session.getAttribute("name"));
System.out.println("First의 application 객체 :" + application.getAttribute("name"));


RequestDispatcher dispatcher = request.getRequestDispatcher("082_ServerObject_Life.jsp");
dispatcher.forward(request,response);

%>






</body>
</html>
