<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05_Select_to.jsp</title>
</head>
<body>
	<%
	String job = request.getParameter("job");
	String interests[] = request.getParameterValues("interest");
	%>
	<h1>
		당신이 선택한 직업 :	<%=job%></h1>
		<br><br><br>
	<br>
	<br>
	<br>

	<h1>당신이 선택한 관심분야</h1>
	<h1>
<%
		if (interests == null)
			out.print("선택한 항목이 없읍니다"); //jsp로 html5 테그에 출력하기 위한 메서드
		else {
			for (String interest : interests) {
%>
		<%=interest%>,
<%
		}
}
%>

</body>
</html>