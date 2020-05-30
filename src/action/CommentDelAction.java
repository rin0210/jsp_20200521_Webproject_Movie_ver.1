package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.CommentDAO;

public class CommentDelAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("왜 여긴 안오니???");
		String commentno = request.getParameter("cno");
		String movieno = request.getParameter("mno");
		String seq = request.getParameter("seq");
		System.out.println(seq);

		CommentDAO cdao = CommentDAO.getInstance();
		if (seq.equals("0")) {
			if (cdao.delOne(Integer.valueOf(commentno))) {
				response.sendRedirect("MainServlet?command=Movie_View&num=" + movieno);
			}
		} else {
			if (cdao.delReOne(Integer.valueOf(seq))) {
				response.sendRedirect("MainServlet?command=Movie_View&num=" + movieno);
			}
		}

	}

}
