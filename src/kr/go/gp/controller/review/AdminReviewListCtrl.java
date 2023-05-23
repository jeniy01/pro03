package kr.go.gp.controller.review;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.gp.dto.ReviewDTO;
import kr.go.gp.model.ReviewDAO;

@WebServlet("/AdminReviewList.do")
public class AdminReviewListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReviewDAO rdao = new ReviewDAO();
		ArrayList<ReviewDTO> rList = rdao.getAllReview();
		
		request.setAttribute("rList", rList);
		//디스패치로 view를 생성하여 proList.jsp로 요청 받은 proList를 포워드
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/review/reviewList.jsp");
		view.forward(request, response);
	}
}
