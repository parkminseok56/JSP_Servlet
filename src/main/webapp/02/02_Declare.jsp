<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_Declare.jsp</title>
<!--   jsp 는 실행영역과 선언부 영역으로  구분됨. 보통 실행영역은 body 안에서 <% %>로 
   표시된 곳에 기술되지만, 선언부는 head 부분에서 <%! %>로 표시된 곳에 기술됨 -->
<%!
     // 선언부의 시작 : 선언부 영역은 변수, 메서드 등이 정의됨.
     
     // 변수의 선언
     String str = "안녕하세요!!";
     int a = 5, b = -5;
 
     // 메서드의 정의
     public int abs( int n){
    	 if(n < 0) n = -n; // n = -1 * n
         return n;   	   	 
     } // jsp의 메서드는 statck으로 선언하지 않아도 사용이 가능함
%>   
</head>
<body>
<%
   // jsp 의 실행부의 시작
   int c=10;
    c++;
    a++;
    out.print(str + " <br> ");
    out.print(a + " 의 절대값 " + abs(a) + " <br> ");
    out.print(c + " 의 절대값 "+ abs(c) + " <br> ");
%>
<br><br>
<%=str%><br>
<%=a%>의 절대값:<%=abs(a)%><br>
<%=c%>의 절대값:<%=abs(c)%><br>

<!-- 선언부(Declare)에 선언된 변수는 전역변수와 같이 사용되어, jsp 페이지 어디서나 사용이 가능하며,
값도 일관하게 유지가 됨. 또 한 페이지를 새로고침해도, 이 전 값이 유지된느 특정이 있으며, 
이는 나중에 배울 세션값과 비슷하게 적용되어, 서버를 재설정 또는 재시작될때까지 값이 유지되는 특성이 있음. 
 -->
</body>

</html>