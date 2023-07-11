<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_Action_to.jsp</title>
</head>
<body>
   <h1>03_Action_to.jsp</h1>
<!-- 아래는 서버에서 실행되어 HTML5로 구성될 내용들임 -->   
<%
  String name = request.getParameter("name"); // "name" : form 내부에 있던 해당 입력란의 name 값
  String id = request.getParameter("id"); // "id" : form 내부에 있던 해당 입력란의 name 값
  String pwd = request.getParameter("pwd");
  String pwd_re = request.getParameter("pwd_re");
  
  String useritem = request.getParameter("useritem");
   // getParameter로 받는 모든 데이터는 String 데이터로 받을 수 있음
%>  

<h3>
성명:  <%=name %>  <br>
아이디: <%=id %>   <br>
비밀번호: <%=pwd %>  <br>
비밀번호 확인: <%=pwd_re %>  <br>

숨겨진 전화번호 : <%=useritem %>)

</h3>   
   
   
   
   
</body>
</html>