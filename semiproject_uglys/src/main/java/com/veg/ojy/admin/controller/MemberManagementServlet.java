package com.veg.ojy.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.veg.hjj.member.dto.Member;
import com.veg.ojy.admin.service.*;
import com.veg.ojy.admin.dao.*;


/**
 * Servlet implementation class MemberManagementServlet
 */
@WebServlet("/MemberCheck.do")
public class MemberManagementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberManagementServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// MemberManagementDao memberDAO = new MemberManagementDao();
		 List<Member> members = new MemberManagementService().selectMemberAll();
		 System.out.println(members);
	     request.setAttribute("member", members);
	     request.getRequestDispatcher("/views/admin/memberManagement/memberCheck.jsp").forward(request, response);
	     
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
