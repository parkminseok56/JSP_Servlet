<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>082_ServerObject_Life.jsp</title>
</head>
<body>

<h1>
second 의 pageContext 속성 : <%=pageContext.getAttribute("name")%> <br>
second 의 request 속성 : <%=request.getAttribute("name")%> <br>
second 의 session 속성 : <%=session.getAttribute("name")%> <br>
second 의 application 속성 : <%=application.getAttribute("name")%> <br>

 RequestDispatcher dispatcher= request.getRequestDispatcher("083_ServerObject_Life.jsp");
 dispatcher.forward(request,response);

</h1>



</body>
</html>