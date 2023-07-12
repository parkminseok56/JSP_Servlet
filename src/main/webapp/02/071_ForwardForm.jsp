<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>071_ForwardForm.jsp</title>
</head>
<body>
  
입장하려면 나이를 입력하세요. <br>
<form action= "072_Forward_do.jsp">
    <input type="text" name="age">
    <input type="hidden" name="abc" value="영어">
    <input type="submit" name="age" value="숫자"> 
</form>

//  name 속성과 value 속성의 차이
name 속성
name 속성은 서버로 전송되는 데이터의 식별자(identifier)로 사용됩니다.
HTML 폼 요소에 name 속성을 지정하면 해당 요소에 입력된 데이터를 식별하기 위해 서버에서 사용할 수 있습니다.
서버 측 코드(예: JSP, 서블릿 등)에서 name 속성을 사용하여 클라이언트에서 전송된 데이터에 접근할 수 있습니다.
name 속성은 폼 요소에 고유해야 합니다. 동일한 name 속성을 가진 여러 요소가 있을 경우, 서버에서 데이터를 구분하기 어렵게 됩니다.

value 속성
value 속성은 폼 요소에 미리 설정된 초기 값(initial value)을 지정하는 데 사용됩니다.
value 속성은 사용자에게 폼 요소에 기본적으로 표시되는 값을 제공합니다.
사용자는 필요에 따라 값을 변경할 수 있으며, 변경된 값은 서버로 전송됩니다.
사용자가 값을 변경하지 않은 경우, value 속성에 지정된 초기 값이 서버로 전송됩니다.
요약하면, name 속성은 서버에서 클라이언트로부터 전송된 데이터를 구별하는 데 사용되는 식별자이고, value 속성은 폼 요소의 초기 값으로 사용되며 사용자가 값을 변경할 수 있습니다.
//
</body>
</html>
