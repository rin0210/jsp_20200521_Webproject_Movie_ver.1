package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.MovieDAO;
import db.MovieDTO;

public class CategoryAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String condition = request.getParameter("condition");

		MovieDAO mdao = MovieDAO.getInstance();

		if (condition == null) {
			// 조회순
			ArrayList<MovieDTO> array_Hits = mdao.getAll_Hits();
			if (array_Hits != null) {
				request.setAttribute("list", array_Hits);
				System.out.println("all movies: " + array_Hits.size());
			}
		} else if (condition.equals("2")) {
			// 최신순
			ArrayList<MovieDTO> array_Recent = mdao.getAll_Recent();
			if (array_Recent != null) {
				request.setAttribute("list", array_Recent);
				System.out.println("all movies: " + array_Recent.size());
			}
		}

		String view = "/jsp/category.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

}
