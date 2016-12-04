package com.lol.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lol.model.Hero;
import com.lol.model.HeroManager;

/**
 * Servlet implementation class ShowHeroServlet
 */
@WebServlet("/ShowHeroServlet")
public class ShowHeroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowHeroServlet() {
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HeroManager manager = new HeroManager();
		List<Hero> heroes = manager.findALL();
		
		request.setAttribute("heroes", heroes);
		RequestDispatcher dis = request.getRequestDispatcher("heroes.jsp");
		dis.forward(request, response);
	}


}
