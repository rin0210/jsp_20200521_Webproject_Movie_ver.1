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
import db.CommentDAO;
import db.CommentDTO;
import db.MovieDAO;
import db.MovieDTO;

public class HomeAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("sessionId");
		String img = (String) session.getAttribute("sessionImg");
		System.out.println("세션아이디: " + id);
		System.out.println("세션이미지: " + img);

		MovieDAO mdao = MovieDAO.getInstance();
		BookmarkDAO bdao = BookmarkDAO.getInstance();
		CommentDAO cdao = CommentDAO.getInstance();

		// 최신순
		ArrayList<MovieDTO> array_Recent = mdao.getAll_Recent();
		request.setAttribute("list_Recent", array_Recent);

		// 조회순
		ArrayList<MovieDTO> array_Hits = mdao.getAll_Hits();
		request.setAttribute("list_Hits", array_Hits);

		// 찜
		if (id != null) {
			ArrayList<BookmarkDTO> array_Mine = bdao.getAll_MyContents(id);
			System.out.println("찜목록 가져왔니:" + array_Mine.size());
			request.setAttribute("list_Mine", array_Mine);
		}

		// 최신 리뷰
		ArrayList<CommentDTO> array_Review = cdao.selectRecentReview();
		System.out.println("최신리뷰 목록:" + array_Review.size());

		request.setAttribute("list_Review", array_Review);

		String view = "/jsp/home.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

}
