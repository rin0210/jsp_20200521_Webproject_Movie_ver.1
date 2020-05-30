package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.MovieDAO;
import db.MovieDTO;

public class SearchAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String search = request.getParameter("search");
		System.out.println("검색할 단어: " + search);

		MovieDAO mdao = MovieDAO.getInstance();

		// 최신순
		ArrayList<MovieDTO> array_Recent = mdao.getAll_Recent();
		ArrayList<MovieDTO> array_Search = new ArrayList<MovieDTO>();
		for (MovieDTO m : array_Recent) {
			if (m.getTitle().indexOf(search) > -1) {
				array_Search.add(m);
			}
		}
		
		request.setAttribute("list", array_Search);
		String view = "/jsp/category.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

}
