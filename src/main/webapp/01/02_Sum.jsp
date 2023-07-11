<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_Sum.jsp</title>
</head>
<body>
 
   <!--  JSP는 JAVA 에서 사용하던 거의 모든 문법이 똑같이 사용됨 -->
   <%
   int sum = 0;
   for (int i=1; i<=100; i++){
         sum +=i;
   }
   %>
   <h2>1부터 100까지의 합계 :   <%= sum %> </h2>
   
    <%
     sum = 0;
   for (int i=1; i<=100; i++){
         sum +=i;  
   %>
       <h2>1부터 i까지의 합계 :   <%= sum %> </h2>
       
    <%
     }
    %>
   <!-- JSP 명령들 사이에 HTML 같은 요소들이 껴들어야 한다면 JSP 영역을 끝내고
   해당 내용을 기술한 후 다시 JSP 영역을 시작시킴.
   한 페이지 안에서 JSP 명령은 중간에 영역이 끝나고 다시 시작해도 한 프로그램처럼 이어짐
   위와 같이 하나의 반복문안 ({})에 H2태그가 들어있따면 H2 테그도 반복실행만큼 쓴것과 같음  -->
   
   
   
   
</body>
</html>