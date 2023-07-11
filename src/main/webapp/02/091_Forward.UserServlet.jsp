<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>091_Forward.UserServlet.jsp/</title>
</head>
<body>

<!-- 
정보입력 페이지(jsp) -> 정보처리 페이지(jsp) -> 처리결과페이지(jsp) 이 세 단계를 거친 자료처리방식은 엣날 방식임.
주로 윈도우 서버(Window NT)에서 ASP 언어를 사용할 때 많이 사용하던 방식임.

다른 방식으로는 JAVA & JSP 로 넘어오면서, 자바 프로그램 코드가 실행 가능해지는 WAS 서버를 사용하고,
이 서버에서는 정보처리 페이지(jsp)를 사용하지 않는 대신,
Servlet 이라는 웹용 클래스(서버에 생성하고 서버에서 실행하는)를 생성하여 정보 처리 명령을 실행하게 함.
 -->

<form method="post" action="../Forward_useServlet">
   <label for="userid">아이디: </label>
   <input type="text" name="id" id="userid"><br>
   <label for="userpw">암&nbsp;&nbsp;호 </label>
   <input type="password" name="pwd" id="userpwd"><br>
   <input type="submit" value="로그인">
</form>

</body>
</html>