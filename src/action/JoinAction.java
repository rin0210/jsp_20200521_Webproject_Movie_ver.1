package action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.MemberDAO;
import db.MemberDTO;

public class JoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String tel = request.getParameter("tel");
		
		MemberDAO mdao = MemberDAO.getInstance();
		MemberDTO mdto = new MemberDTO();
		mdto.setName(name);
		mdto.setId(id);
		mdto.setPwd(pwd);
		mdto.setTel(tel);
		mdao.insert(mdto);
		System.out.println("회원등록 완료!");
		
//		new HomeAction().execute(request, response);
		request.setAttribute("result", 1);
		String view = "jsp/alert.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

}
