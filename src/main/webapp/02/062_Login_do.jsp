<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>    
<% 
    // JSP 문법에 의한 로그인 체크 동작만 필요한 페이지이므로, 별도의 HTML 태그는 사용하지 않음.
    // 전달된 아이디 비번의 유효성을 점검한 뒤 로그인 성공페이지로 이동하거나, 로그인 페이지로 되돌아감.
    
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    
    // 이 부분에서 실제로는 데이터베이스에 전달된 '아이디의 회원을 조회'한 후 비번을 비교함.
    // 지금은 데이터베이스 조회없이 내가 정한 특정 아이디와 비번만 비교함
    if(id.equals("goat") && pwd.equals("1234")){
    	// 아이디 비번이 맞는 경우
    	// jsp 문법으로 페이지 이동은 response.sendRedirect();
    	response.sendRedirect("063_LoginOk.jsp?name=" + URLEncoder.encode("홍길동","UTF-8"));
    	// <input type="text"> 테그를 쓰지 않고, 이동하는 주소에 파라미터의 name과 value를 붙여서 전송.
        // 위와 같이 주소에 파라미터를 붙이는 방식은 post 방식으로는 사용할 수가 없으므로, 중요정보도 모두 노출됨.
        // jsp 파일에서 로그인 절차를 진행하면 한글 전달값에 대한 인코딩이 UTF-8이 아니기때문에,
        // 도착페이지에서 표시되는 한글이 깨짐. 따라서 별도의 URLEncodong 객체를 사용해야 함.
    } else {
    	// 아이디 비번이 틀린 경우
    	response.sendRedirect("061_Login.jsp");
    }
    
    
%>