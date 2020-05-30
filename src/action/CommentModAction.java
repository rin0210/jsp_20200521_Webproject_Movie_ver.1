package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.CommentDAO;

public class CommentModAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String body = request.getParameter("cbody");
		String cno = request.getParameter("c_no");
		String mno = request.getParameter("m_no");

		CommentDAO cdao = CommentDAO.getInstance();
		if(cdao.updateOne(body, Integer.valueOf(cno))) {
			response.sendRedirect("MainServlet?command=Movie_View&num=" + mno);
		}
	}

}
