package com.lol.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lol.model.Hero;
import com.lol.model.HeroManager;
/**
 * Servlet implementation class heroServlet
 */
@WebServlet("/heroServlet")
public class HeroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HeroServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HeroManager manager = new HeroManager();
		
		int id = Integer.parseInt(request.getParameter("id"));
		String isChange = request.getParameter("is_change");
		String directPage = "";
		
		Hero hero = manager.findOne(id);
		request.setAttribute("hero", hero);
		
		if(isChange != null){
			directPage = "update.jsp";
		}else{
			directPage = "hero.jsp";
		}
		
		RequestDispatcher dis = request.getRequestDispatcher(directPage);
		dis.forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String idStr = request.getParameter("id");
		HeroManager manager = new HeroManager();
		Hero hero = new Hero();
		
		hero.setName(request.getParameter("name"));
		hero.setNickName(request.getParameter("nickName"));
		hero.setAvatar(request.getParameter("avatar"));
		hero.setImage(request.getParameter("image"));
		hero.setDesc(request.getParameter("desc"));
		
		String info;
		
		if(idStr == null){
			manager.add(hero);
			info ="英雄添加成功";
		}else{
			int id = Integer.parseInt(idStr);
			hero.setId(id);
			manager.modify(hero);
			info = "英雄修改成功";
		}
		
		request.setAttribute("info", info);
		request.setAttribute("hero", hero);
		
		RequestDispatcher dis = request.getRequestDispatcher("hero.jsp");
		dis.forward(request, response);	}

}
