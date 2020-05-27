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
import db.MovieDAO;
import db.MovieDTO;

public class HomeAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("sessionId");
		System.out.println("세션아이디: " + id);

		MovieDAO mdao = MovieDAO.getInstance();
		BookmarkDAO bdao = BookmarkDAO.getInstance();

		// 최신순
		ArrayList<MovieDTO> array_Recent = mdao.getAll_Recent();
		if (array_Recent != null) {
			request.setAttribute("list_Recent", array_Recent);
		}

		// 조회순
		ArrayList<MovieDTO> array_Hits = mdao.getAll_Hits();
		if (array_Hits != null) {
			request.setAttribute("list_Hits", array_Hits);
		}

		// 찜
		if (id != null) {
			ArrayList<BookmarkDTO> array_Mine = bdao.getAll_MyContents(id);
			System.out.println("찜목록 가져왔니:" + array_Mine.size());
			if (array_Mine != null) {
				request.setAttribute("list_Mine", array_Mine);
			}
		}

		String view = "/jsp/home.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

}
