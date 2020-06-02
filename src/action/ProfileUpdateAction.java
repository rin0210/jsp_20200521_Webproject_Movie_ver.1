package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import db.MemberDAO;

public class ProfileUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("sessionId");

		MemberDAO mdao = MemberDAO.getInstance();

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		int uploadFileSizeLimit = 2 * 1024 * 1024; // 파일용량 제한 // 최대 업로드 파일 크기 5MB로 제한
		String encType = "UTF-8";
		String uploadFilePath = (String) request.getAttribute("uploadFilePath");
		System.out.println("서버상의 실제 디렉토리 :" + uploadFilePath);

		try {
			// MultipartRequest 객체를 이용해서 파일 업로드 시킴
			MultipartRequest multi = new MultipartRequest(request, // request 객체
					uploadFilePath, // 서버상의 실제 디렉토리
					uploadFileSizeLimit, // 최대 업로드 파일 크기
					encType, // 인코딩 방법
					// 동일한 이름이 존재하면 새로운 이름이 부여됨(자동으로 이름변경)
					new DefaultFileRenamePolicy());
			// 업로드된 파일의 이름 얻기
			String fileName = multi.getFilesystemName("imgfile");
			if (fileName == null) { // 파일이 업로드 되지 않았을때
				System.out.print("파일 업로드 되지 않았음");
			} else { // 파일이 업로드 되었을때
				System.out.println("업로드 성공!!" + multi.getParameter("name")); // 업로드파일은 post방식으로 못받아오니까
																				// request.getParameter를 못쓰고 multi를
																				// 써줌
				// request.setAttribute("fname", fileName);
			} // else
			String name = multi.getParameter("name");

			if (mdao.updateProfile(name, fileName, id)) {
				System.out.println("프로필 수정 성공!!");
				session.setAttribute("sessionImg", fileName);
				System.out.println("세션이미지 수정: " + fileName);
				String view = "jsp/alert.jsp";
				request.setAttribute("result", 5);
				RequestDispatcher dispatcher = request.getRequestDispatcher(view);
				dispatcher.forward(request, response);
			}

		} catch (Exception e) {
			System.out.print("예외 발생 : " + e);
		}

	}
}
