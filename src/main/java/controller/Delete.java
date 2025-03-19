package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.UserDao;
import dto.User;

@WebServlet("/delete")
public class Delete extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int Id = Integer.parseInt(req.getParameter("id"));
		
		
		UserDao dao = new UserDao();
		
		
		boolean result = dao.fetchByid(Id);
		
		if (result) {
			List<User> list = dao.fetchAll();
			req.setAttribute("u", list);
			RequestDispatcher dispatcher = req.getRequestDispatcher("Display.jsp");
			dispatcher.forward(req, resp);
		}

	}

}
