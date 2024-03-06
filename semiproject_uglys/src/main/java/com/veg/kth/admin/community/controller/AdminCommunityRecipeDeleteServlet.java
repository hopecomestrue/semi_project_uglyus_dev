package com.veg.kth.admin.community.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.veg.kth.admin.community.service.AdminCommunityService;

/**
 * Servlet implementation class AdminCommunityRecipeDeleteServlet
 */
@WebServlet("/admin/deleteRecipe.do")
public class AdminCommunityRecipeDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCommunityRecipeDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BufferedReader reader = request.getReader();
	    StringBuilder requestData = new StringBuilder();
	    String line;
	    while ((line = reader.readLine()) != null) {
	        requestData.append(line);
	    }

	    // JSON 데이터를 파싱
	    JsonElement jsonElement = JsonParser.parseString(requestData.toString());

	    // JsonArray로 변환
	    JsonArray jsonArray = jsonElement.getAsJsonArray();
	    
	    List<Integer> recipeNo = new ArrayList<Integer>();
	    // 배열의 각 요소에 접근
	    for (JsonElement element : jsonArray) {
	        String value = element.getAsString();
	        // 여기에서 value를 사용하여 원하는 작업 수행
	        recipeNo.add((Integer.parseInt(value)));
	    }
	    
	    int result = new AdminCommunityService().deleteRecipeByNo(recipeNo);
	    
	    response.getWriter().write(String.valueOf(result));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
