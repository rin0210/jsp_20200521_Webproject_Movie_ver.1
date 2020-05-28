package action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.MemberDAO;
import db.MemberDTO;

public class MaPageAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("sessionId");
		
		MemberDAO mdao = MemberDAO.getInstance();
		MemberDTO mdto = mdao.selMyInfo(id);
		request.setAttribute("mdto", mdto);
		
		String view = "jsp/myPage.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}
