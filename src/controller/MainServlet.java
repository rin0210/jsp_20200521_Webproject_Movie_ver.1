package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MainServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		
		String command = request.getParameter("command");
		System.out.println("MainServlet에서 요청 받음을 확인: " + command);
		/**
		 * 아시겠지만, 'multipart/form-data'을 사용하면 request.getParameter()로 값을 받을 수 없다. 하지만,
		 * action부분에 이런식으로 하면 충분히(?) 가능하다.
		 * 
		 */
		if(command.equals("Movie_ProfileUpdate")) { 
			// 여기를 바꿔주면 다운받는 경로가 바뀜
			String savePath = "/images/profile_images"; // 미리 폴더만들어두어야함
			ServletContext context = getServletContext(); // 실제 물리적인 디렉토리 위치(c:로 시작하는 위치 (c드라이브에서))
			String uploadFilePath = context.getRealPath(savePath);
			request.setAttribute("uploadFilePath", uploadFilePath);
			System.out.println(uploadFilePath + "컨트롤러");
		}
		ActionFactory af = ActionFactory.getInstance();
		Action action = af.getAction(command);
		if (action != null) {
			action.execute(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
