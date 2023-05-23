package kr.go.gp.controller.user1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.gp.model.User1DAO;

@WebServlet("/AdminDeleteUser1.do")
public class AdminDeleteUser1Ctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		User1DAO dao = new User1DAO();
		int cnt = dao.deleteUser(id);
		request.setAttribute("cnt", cnt);
		response.sendRedirect("User1List.do");
	}
}
