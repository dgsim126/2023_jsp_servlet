package ch07;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

/**
 * Servlet implementation class ch07_servlet
 */
public class ch07_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ch07_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("init");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("destroy");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("doGet");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		System.out.println("doPost");
		
		String id= request.getParameter("id");
		String pw= request.getParameter("pw");
		
		String[] hobbies= request.getParameterValues("hobby");
		String major= request.getParameter("major");
		String protocol= request.getParameter("protocol");
		
		response.setContentType("text/html");
		PrintWriter writer= response.getWriter();
		
		writer.println("<html><head></head><body>");
		writer.println("아이디: "+id+"<br>");
		writer.println("비밀번호: "+pw+"<br>");
		writer.println("취미: "+Arrays.toString(hobbies)+"<br>");
		writer.println("전공: "+major+"<br>");
		writer.println("프로토콜: "+protocol+"<br>");
		writer.println("</body></html>");
	}

}

