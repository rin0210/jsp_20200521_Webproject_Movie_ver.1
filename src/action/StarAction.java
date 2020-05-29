package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.StarDAO;
import db.StarDTO;

public class StarAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String star = request.getParameter("star-input");
		String movie_no = request.getParameter("movie_no");
		System.out.println("영화 번호: " + movie_no);
		System.out.println("내가 준 별점: " + star);

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("sessionId");

		StarDAO sdao = StarDAO.getInstance();
		StarDTO sdto = new StarDTO();
		
		sdto.setId(id);
		sdto.setNo(Integer.valueOf(movie_no));
		sdto.setStar(Integer.valueOf(star));

		if (sdao.idCheck(id, Integer.valueOf(movie_no))) { // 아이디랑 영화가 중복이 안됐으면
			sdao.insertStar(sdto); // 별점등록
		} else {
			sdao.delOne(sdto);
		}
		
		response.sendRedirect("MainServlet?command=Movie_View&num=" + movie_no);

	}

}
