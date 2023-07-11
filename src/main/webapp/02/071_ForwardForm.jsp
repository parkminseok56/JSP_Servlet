<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>071_ForwardForm.jsp</title>
</head>
<body>
  
입장하려면 나이를 쳐 입력하세요. <br>
<form action= "072_Forward_do.jsp">
    <input type="text" name="age">
    <input type="hidden" name="abc" value="히라가나">
    <input type="submit" name="age" value="슛코"> 
</form>


</body>
</html>