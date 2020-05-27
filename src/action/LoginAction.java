package action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.MemberDAO;
import db.MemberDTO;

public class LoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		MemberDAO mdao = MemberDAO.getInstance();
		MemberDTO mdto =mdao.selOne(id, pwd);
		
		String view = null;
		
		if(mdto!=null) {	// 회원정보가 있으면
			HttpSession session = request.getSession(); // 세션 저장
			session.setAttribute("sessionId", mdto.getId());
			session.setAttribute("sessionName", mdto.getName());
			
			new HomeAction().execute(request, response);
			
		} else {	// 회원정보가 없으면
//			response.sendRedirect("jsp/login.jsp");
			request.setAttribute("result", 2);
			view = "jsp/alert.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}
	}

}
