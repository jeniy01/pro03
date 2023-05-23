package kr.go.gp.controller.user1;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.gp.dto.User1DTO;
import kr.go.gp.model.User1DAO;

import com.crypto.util.AES256;

@WebServlet("/AdminResetUser1.do")
public class AdminResetUser1Ctrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		User1DAO dao = new User1DAO();
		User1DTO user = new User1DTO();
		
		user = dao.getTel(id);
		int ln = user.getTel().length();
		String pw2 = user.getTel().substring(ln-4);
		String key = "%03x";
		String passwd = "";
		try {
			passwd = AES256.encryptAES256(pw2, key);
		} catch (InvalidKeyException | NoSuchAlgorithmException
				| InvalidKeySpecException | NoSuchPaddingException
				| InvalidParameterSpecException | BadPaddingException
				| IllegalBlockSizeException e) {
			e.printStackTrace();
		}
		
		int cnt = dao.resetPassword(id, passwd);
		
		if(cnt>=1){
			response.sendRedirect("User1List.do");
		} else {
			response.sendRedirect("User1List.do");
		}
	}
}
