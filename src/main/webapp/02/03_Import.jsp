<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>        
<%@ page import="java.util.Calendar" %>    
<%@ page import="java.util.Date" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_import.jsp</title>
</head>
<body>
<%
   Calendar date=Calendar.getInstance();
   java.text.SimpleDateFormat today = new SimpleDateFormat("yyyy년 MM월 dd일");
   SimpleDateFormat now = new SimpleDateFormat("hh시 mm분 ss초");
%>
<h1>오늘은
<%
   Date d = date.getTime();
   out.print( today.format( d ));
%>
입니다.</h1>
<h1> 지금 시작은 <% out.print( now.format(date.getTime())); %> 입니다. </h1>
<!-- 모든 jsp 파일에는 response  객체와 request 객체가 포함되어 있음.-->
<!-- jsp파일에는 이미 존재하는 개체로 바로 out.print로 출력이 가능함  -->





</body>
</html>