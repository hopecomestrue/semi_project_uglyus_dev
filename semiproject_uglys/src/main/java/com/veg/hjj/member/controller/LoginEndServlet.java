package com.veg.hjj.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.veg.hjj.member.dto.Member;
import com.veg.hjj.member.service.MemberService;

/**
 * Servlet implementation class LoginEndServlet
 */
@WebServlet("/member/loginend.do")
public class LoginEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginEndServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//파라미터로 ID,PW 가져오기
		request.setCharacterEncoding("UTF-8");	
			String memberId=request.getParameter("memberId");
			String memberPw=request.getParameter("memberPw");
			String remember=request.getParameter("remember");
			
			System.out.println(memberId+memberPw+remember);
			if(remember!=null) {
				Cookie c=new Cookie("remember","");
				c.setMaxAge(60*60*24);
				response.addCookie(c);
			}
			Member m=new MemberService().selectMemberByIdAndPw(memberId,memberPw);
			System.out.println(m);
			
			//로그인 성공, 실패
			if(m!=null) {
				HttpSession session=request.getSession();
				session.setAttribute("loginMember", m);
				response.sendRedirect(request.getContextPath());
			}else {
				request.setAttribute("msg", "아이디나 패스워드가 일치하지 않습니다.");
				request.setAttribute("loc","/member/login.do");
				request.getRequestDispatcher("/views/member/msg.jsp")
				.forward(request, response);
			}
			
			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
