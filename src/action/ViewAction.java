package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.BookmarkDAO;
import db.CommentDAO;
import db.CommentDTO;
import db.HitsDAO;
import db.MovieDAO;
import db.MovieDTO;

public class ViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		System.out.println("ViewAction num: " + num);

		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("sessionId");

		MovieDAO mdao = MovieDAO.getInstance();
		MovieDTO mdto = mdao.getOne(num);
		
		if (userId != null) {
			// 조회 여부 체크
			HitsDAO hdao = HitsDAO.getInstance();
			if (hdao.idNumChk(userId, Integer.valueOf(num)) == true) { // 조회x
				mdao.updateHits(num);
				hdao.insertCount(userId, Integer.valueOf(num));
			}

			// 찜 여부 체크
			BookmarkDAO bdao = BookmarkDAO.getInstance();
			if (bdao.idNumChk(userId, Integer.valueOf(num)) == true) { // 찜x
				request.setAttribute("bookMarkChk", 1);
			} else { // 찜o
				request.setAttribute("bookMarkChk", 2);
			}
		}
		
		// 댓글 가져오기
		CommentDAO cdao = CommentDAO.getInstance();
		ArrayList<CommentDTO> commentList = cdao.selectCommentByNum(num);
		int cnt = 0;
		for(CommentDTO c : commentList) {
			cnt++;
		}
		System.out.println("댓글 개수: "+cnt);
		
		String view = "jsp/view.jsp";
		request.setAttribute("mdto", mdto);
		request.setAttribute("commentList", commentList);
		request.setAttribute("cnt", cnt);
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
		
	}
}
