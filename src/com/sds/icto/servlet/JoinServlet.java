package com.sds.icto.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/param")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JoinServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String gender = request.getParameter("gender");
		String items[] = request.getParameterValues("item");
		String job = request.getParameter("job");
		String interests[] = request.getParameterValues("interest");
		String content = request.getParameter("content");
		
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.println("당신이 입력한 정보입니다.<br>");
		out.println("아이디 : ");
		out.println(id);
		out.println("<br> 비밀번호 : ");
		out.println(pwd);
		out.println("<br> 성별 :  ");
		out.println(gender);
		
		out.println("<br> 관심항목 : ");
		if(items==null){
			out.print("선택한 항목이 없습니다.");
		} else{
			for (String item : items) {
				out.print(item+" ");
			}
		}
		out.println("<br> 직업 :  ");
		out.println(job);
		
		out.println("<br> 커피선호 : ");
		if(interests==null){
			out.print("선택한 항목이 없습니다.");
		} else{
			for (String interest : interests) {
				out.print(interest+" ");
			}
		}
		
		out.println("<br> 자기소개 : <pre>");
		out.println(content);
		
		out.println("<br><a href='javascript:history.go(-1)'>다시</a>");
		out.print("</html></body>");
		out.close();
	}

}
