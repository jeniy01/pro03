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

@WebServlet("/GetReview.do")
public class GetReviewCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String rnum = request.getParameter("rnum");
		
		ReviewDAO dao = new ReviewDAO();
		ArrayList<ReviewDTO> rList = new ArrayList<ReviewDTO>();
		ReviewDTO rev = new ReviewDTO();
		
		rev = dao.getReview2(rnum);
		
		request.setAttribute("rev", rev);
		request.setAttribute("rList", rList);
		
		//디스패치로 view를 생성하여 noticeList.jsp로 요청 받은 notiList를 포워드
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/review/getReview.jsp");
		view.forward(request, response);
	}
}
