package action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.BookmarkDAO;

public class BookmarkAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");

		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("sessionId");

		if (userId != null) {
			BookmarkDAO bdao = BookmarkDAO.getInstance();
			if (bdao.idNumChk(userId, Integer.valueOf(num)) == true) {
				bdao.insertBookmark(userId, Integer.valueOf(num)); // 찜하기
				response.sendRedirect("MainServlet?command=Movie_View&num=" + num);
			} else {
				bdao.delBookmark(userId, Integer.valueOf(num)); // 찜하기 취소
				response.sendRedirect("MainServlet?command=Movie_View&num=" + num);
			}
		} else {
			String view = "/jsp/alert.jsp";
			request.setAttribute("result", 6);
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}
	}
}
