package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.BookmarkDAO;
import db.BookmarkDTO;

public class MyContentsAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("sessionId");

		BookmarkDAO bdao = BookmarkDAO.getInstance();

		if (id != null) {
			ArrayList<BookmarkDTO> array_Mine = bdao.getAll_MyContents(id);
			System.out.println("찜목록 가져왔니:" + array_Mine.size());
			request.setAttribute("list_Mine", array_Mine);
			String view = "/jsp/myContents.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		} else {
			String view = "/jsp/alert.jsp";
			request.setAttribute("result", 6);
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}
	}

}
