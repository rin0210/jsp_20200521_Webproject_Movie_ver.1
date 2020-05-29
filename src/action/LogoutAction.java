package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		// 세션에 저장된 객체를 제거
		session.removeAttribute("sessionId");
		session.removeAttribute("sessionName");
		session.removeAttribute("sessionImg");
		
		// 세션 무효화
		session.invalidate();
		
		new HomeAction().execute(request, response);
	}

}
