package action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.MemberDAO;

public class PaymentAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String level = request.getParameter("type");
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("sessionId");

		MemberDAO mdao = MemberDAO.getInstance();
		if (mdao.updateLevel(Integer.valueOf(level), id)) {
			String view = "/jsp/alert.jsp";
			request.setAttribute("result", 7);
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}
//		new HomeAction().execute(request, response);
	}
}
