<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

// 075_myPage_do.jsp

//  현재 페이지와 같이 실제 화면으로 표현되기 전에 거쳐가는 처리 페이지에는 
//  이동 할 페이지에 필요한 데이터를 준비하거나, 아래와 같이 로그인 유무를 확인하는 작업들이 이루어짐.
//  아래의 내용은 다음 예제에서 서블릿으로 이동되어 작성될 예정임.
if(session.getAttribute("loginUser")==null){
	// 실제 표시될 페이지에서 로그인 유무를 판단하기도 하지만, 그 와 비슷하게 처리 페이지에서도 	
	// 로그인 유무를 판단함. 현재 내용이 서블릿으로 이동된다면 서블릿에서 로그인을 검사하는 경우가 더 많음. 
	response.sendRedirect("071_LoginForm.jsp");
}else{
	// 본 페이지로 이동하기 전 필요한 데이터를 준비하여 request에 담거나 session에 담아서 이동함
	response.sendRedirect("076_mypage.jsp");
}



%>