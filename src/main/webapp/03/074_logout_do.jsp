<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 074_logout_do.jsp

// 세션 항목 한 개 삭제
// session.removeAttribute("저장된 세션의 name 값");

// 현재 사이트의 모든  세션을 삭제
session.invalidate();

//response.sessionRedirect ("071_LoginForm.jsp");
%>
<script type="text/javascript">
    alert("로그아웃 되었스므니다.");
    location.href="071_LoginForm.jsp";

</script>