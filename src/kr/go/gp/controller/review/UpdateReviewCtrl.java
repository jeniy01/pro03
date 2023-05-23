package kr.go.gp.controller.review;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.gp.dto.ReviewDTO;
import kr.go.gp.model.ReviewDAO;

@WebServlet("/UpdateReview.do")
public class UpdateReviewCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String rnum = request.getParameter("rnum");
		
		ReviewDAO dao = new ReviewDAO();
		ReviewDTO rev = dao.getRnumByReview(rnum);
		
		request.setAttribute("rev", rev);
		
		//디스패치로 view를 생성하여 proList.jsp로 요청 받은 proList를 포워드
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/review/updateReview.jsp");
		view.forward(request, response);
	}
}
