<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//072_Login_do.jsp

String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

if( id.equals("scott") && pwd.equals("1234")){
	
	// 로그인 조건이 갖춰지면 로그인 결과 페이지로 가지전에, 로그인 정보를 세션에 저장함.
	session.setAttribute("loginUser",id);
	
	// 차 후에는 세션에 로그인 정보를 단순히 지금처럼 아이디만 저장하는게 아닌, 로그인한 사람의 정보를
	// DTO 객체에 넣고 DTO 객체를 세션에 저장하게 됨. 현재는 간단히 아이디만 저장.
	response.sendRedirect("073_main.jsp");
}else{
	response.sendRedirect("071_LoginForm.jsp");
}

%>


