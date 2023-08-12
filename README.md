# JSP_Servlet

 - Jsp란 
   - JSP(JavaServer Pages)는 웹 애플리케이션을 개발하기 위한 Java 기반의 웹 프로그래밍 기술임.
   - 웹 페이지를 만들기 위해 HTML과 Java를 조합하여 사용하는 기술로, 사용자와 상호작용하며 동적인 웹 애플리케이션을 개발하는 데 사용됨.


------------------------------------------------------------------------------------------------------------------------------------------

- JSP의 실행순서
  
  - 1.브라우저가 웹서버에 JSP에 대한 요청 정보를 전달한다.
  - 2.브라우저가 요청한 JSP가 최초로 요청했을 경우만 JSP로 작성된 코드가 서블릿으로 코드로 변환한다. (java 파일 생성)
  - 서블릿 코드를 컴파일해서 실행가능한 bytecode로 변환한다. (class 파일 생성)
  - 4.서블릿 클래스를 로딩하고 인스턴스를 생성한다.
  - 5.서블릿이 실행되어 요청을 처리하고 응답 정보를 생성한다.


------------------------------------------------------------------------------------------------------------------------------------------

- JSP 문법
  
1. 선언문

선언문 : <%! %>
선언문은 JSP 페이지 내에서 필요한 멤버변수나 메소드가 필요할 때 선언해 사용하는 요소
선언문의 문법
<%! 문장 %>

2.스크립트릿

스크립트릿 : <% %>
가장 일반적으로 많이 쓰이는 스크립트 요소
주로 프로그래밍의 로직을 기술할 때 사용
스크립트릿에서 선언된 변수는 지역변수
스크립트릿의 문법
<% 문장%>

3.표현식(Expression)

표현식 : <%=%>
JSP 페이지에서 웹 브라우저에 출력할 부분을 표현 (즉, 화면에 출력하기 위한 것)
스크립트릿내에서 출력할 부분은 내장객체인 out 객체의 print() 또는 println() 메소드를 사용해서 출력
표현식의 문법
<%=문장%>


------------------------------------------------------------------------------------------------------------------------------------------

 - JSP 내장 객체란?
   
   - JSP를 실행하면 서블릿 소스가 생성되고 실행된다.
   -  JSP에 입력한 대부분의 코드는 생성되는 서블릿 소스의 _jspService() 메소드 안에 삽입되는 코드로 생성된다.
   -  jspService()에 삽입된 코드의 윗부분에 미리 선언된 객체들이 있는데, 해당 객체들은 jsp에서도 사용 가능하다.
   -  response, request, application, session, out과 같은 변수를 내장객체라고 한다.
