package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dto.User;
@WebServlet("/idforUpdate")
public class FindPersonForUpdate extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id =Integer.parseInt(req.getParameter("id"));
		UserDao  userDao = new UserDao();
		User frontenduser =userDao.fetcid(id);
		if(frontenduser!=null) {
			req.setAttribute("user", frontenduser);
			RequestDispatcher dispatcher = req.getRequestDispatcher("Update.jsp");
			dispatcher.forward(req, resp);
		}
		
	}

}
