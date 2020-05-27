package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.CommentDAO;
import db.CommentDTO;

public class CommentWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("sessionId");
		
		CommentDTO cdto = new CommentDTO();
		cdto.setMovieno(Integer.valueOf(num));
		cdto.setId(id);
		cdto.setName(name);
		cdto.setContent(content);
		
		CommentDAO cdao = CommentDAO.getInstance();
		cdao.insertComment(cdto);
		
		new ViewAction().execute(request, response);
	}

}
