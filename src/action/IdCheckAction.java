package action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.MemberDAO;

public class IdCheckAction implements Action {

	public IdCheckAction() {
	}

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");

		System.out.println("체크할 아이디: " + id);
		MemberDAO mdao = MemberDAO.getInstance();

		if (mdao.idCheck(id) == false) {
			request.setAttribute("result", 3); // 중복 아이디가 있다면

		} else {
			request.setAttribute("result", 4); // 아이디가 사용 가능하면
		}
		request.setAttribute("id", id);

		String view = "jsp/join.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}
