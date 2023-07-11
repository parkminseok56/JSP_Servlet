package com.ezen.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Join_servlet
 */
@WebServlet("/Join_servlet")
public class Join_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Join_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		// 전달된 파라미터를 해당변수를 생성해서 담고, 
		// 필요 항목들은 변환해서 ( gender: 1, 2 -> "남" "여")
		// request에 setAttribute로 담고
		// 102_JSP_Servlet_Ex02.jsp로 포워딩함.
		
		String id = (String) request.getParameter("id");
		String pwd = (String) request.getParameter("pwd");
		// 성별
		String gender = request.getParameter("gender");
		// 메일 수신
		String chk_mail = request.getParameter("chk_mail");
		// 하고 싶은 말
		String content = request.getParameter("content");
		// 구입 항목
		String [] item = request.getParameterValues("item");
		// 직업
		String job = request.getParameter("job");
		// 관심 분야
		String [] interest = request.getParameterValues("interest");
		
		request.setAttribute("id", id);
		request.setAttribute("pwd", pwd);
		request.setAttribute("content",content);
		
		if ( gender.equals("1")) request.setAttribute("gender", "남성");
		else request.setAttribute("gender", "여성");
		
		if ( chk_mail.equals("1")) request.setAttribute("chk_mail", "수신");
		else request.setAttribute("chk_mail", "거부");
		
		// item 처리
		// 선택한 번호에 딸느 물건 이름이 저장될 배열을 생성하고
		// 전달된 배열의 크기와 같은 크기로 생성함
		String []sItem= new String[ item.length ];
		for(int i=0; i<item.length; i++) {
			switch( item[i]) {
			case "1": sItem[i] = "신발"; break;
			case "2": sItem[i] = "가방"; break;
			case "3": sItem[i] = "벨트"; break;
			case "4": sItem[i] = "모자"; break;
			case "5": sItem[i] = "시계"; break;
			case "6": sItem[i] = "주얼리"; break;			
			}
		}
		request.setAttribute("items", sItem);
		
		switch( job) {
		case "1": request.setAttribute("job", "학생"); break;
		case "2": request.setAttribute("job", "컴퓨터/인터넷"); break;
		case "3": request.setAttribute("job", "언론"); break;
		case "4": request.setAttribute("job", "공무원"); break;
		case "5": request.setAttribute("job", "군인"); break;
		case "6": request.setAttribute("job", "서비스업"); break;
		case "7":request.setAttribute("job", "교육"); break;		
		}
		
		String [] inter = new String[ item.length ];
		for(int i=0; i<inter.length; i++) {
			switch( interest[i]) {
			case "1": inter[i] = "에스프레소"; break;
			case "2": inter[i] = "로스팅"; break;
			case "3": inter[i] = "생두"; break;
			case "4": inter[i] = "원두"; break;
			case "5": inter[i] = "핸드드립"; break;					
			}
		}
		request.setAttribute("interests", inter);
		
		RequestDispatcher dp = request.getRequestDispatcher("02/102_JSP_Servlet_Ex02.jsp");
		dp.forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
