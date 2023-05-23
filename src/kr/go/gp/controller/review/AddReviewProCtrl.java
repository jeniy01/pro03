package kr.go.gp.controller.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.gp.dto.ReviewDTO;
import kr.go.gp.model.ReviewDAO;

@WebServlet("/AddReviewPro.do")
public class AddReviewProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		ReviewDAO dao = new ReviewDAO();
		ReviewDTO rev = new ReviewDTO();
		rev.setRnum(dao.getRevGenerator());
		
		String rnum = request.getParameter("rnum"); 
		rev.setRnum(rnum);
		
		String rtitle = request.getParameter("rtitle");
		rev.setRtitle(rtitle);
		rev.setRcontent(request.getParameter("rcontent"));
		rev.setRauthor(request.getParameter("rauthor"));
		
		int cnt = dao.addReview(rev);
		if(cnt>0){
			response.sendRedirect("GetReviewList.do?rnum="+rnum);
		} else {
			response.sendRedirect("GetReviewList.do?rnum="+rnum);
		}
	}
}
