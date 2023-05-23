package kr.go.gp.controller.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.gp.dto.ReviewDTO;
import kr.go.gp.model.ReviewDAO;

@WebServlet("/UpdateReviewPro.do")
public class UpdateReviewProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		ReviewDAO dao = new ReviewDAO();
		ReviewDTO rev = new ReviewDTO();
		
		String rnum = request.getParameter("rnum");		
		rev.setRnum(rnum);
		
		String rtitle = request.getParameter("rtitle"); 
		rev.setRtitle(rtitle);
		
		String rcontent = request.getParameter("rcontent");
		rev.setRcontent(rcontent);
		
		int cnt = dao.updateReview(rev);
		if(cnt>0){
			response.sendRedirect("UpdateReview.do?rnum="+rnum);
		} else {
			response.sendRedirect("UpdateReview.do?rnum="+rnum);
		}
	}
}
