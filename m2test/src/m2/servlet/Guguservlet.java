package m2.servlet;

import java.util.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import m2.model2.Guguservice;

/**
 * Servlet implementation class Guguservlet
 * http://localhost:8085/m2test/mvc/gugu2?dna=2
 */
@WebServlet({"/mvc/gugu2" })
public class Guguservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.요청분석
		int dan = java.lang.Integer.parseInt(request.getParameter("dan"));
		System.out.println(dan+"<--dan Guguservlet");
	
		//2.요청처리요구
		Guguservice service = new Guguservice();
		ArrayList<String> list = service.getGugudan(dan);
		//list
		
		
		//3.출력을 위임 (요청과 응답을 포워딩 + 모델list)
		request.setAttribute("list",list); //setAttribute(String, Object)
		RequestDispatcher rd = request.getRequestDispatcher("/mvc/gugu2.jsp");
		rd.forward(request, response);
	}

}
