<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>094_useBeanAction.jsp</title>
</head>
<body>

<!-- 리퀘스트에 담겨온 객체는 아래와 같이 꺼냄  -->
<jsp:useBean id="member" class="com.ezen,servlet.dto.MemberDto" scope="request" />

<h2> 입력 완료된 회원 정보</h2>
<table>
         <tr><td> 이름 </td></tr><input type="text" name="name" size="20"></td></tr>
         <tr><td> 아이디 </td></tr> <input type="text" name="userid" size="20"></td></tr>
         <tr><td> 별명 </td></tr> <input type="text" name="nickname" size="20"></td></tr>
         <tr><td> 비밀번호 </td></tr> <input type="password" name="pwd" size="20"></td></tr>
         <tr><td> 이메일 </td></tr> <input type="text" name="email" size="20"></td></tr>
         <tr><td> 전화번호 </td></tr> <input type="text" name="phone" size="20"></td></tr>







</table>

</body>
</html>