<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>083_main.jsp</title>
</head>
<body>
<%
   if( session.getAttribute("loginUser")==null){
	   response.sendRedirect("081_loginForm.jsp"); // 로그인 창으로 되돌아옴
     }else{
%>
         로그인 관리자 <br> 전화번호 010-123-1234
         <h2><%= session.getAttribute("loginUser") %>님 이 로그인 하셨읍니다.</h2>
         저희 사이트에 방문해 주셔서 감사하므니다. <br> 즐거운 시간 되시므니다... <br>
         
         <form method="get" action= "">
             <input type= submit value = "마이페이지">
         </form>
          <form method="get" action= "">
             <input type= submit value = "로그아웃">        
         </form>
<%
   }
%>
</body>
</html>