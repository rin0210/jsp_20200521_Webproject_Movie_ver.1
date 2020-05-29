package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.CommentDAO;
import db.CommentDTO;

public class ReCommentAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String content = request.getParameter("content");
		String num = request.getParameter("num");
		String grp = request.getParameter("grp");
		String seq = request.getParameter("seq");
		String lvl = request.getParameter("lvl");
		System.out.println("seq: "+seq);
		
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("sessionId"); 
		String name = (String) session.getAttribute("sessionName");
		String img = (String) session.getAttribute("sessionImg");

		int commentSeq = Integer.valueOf(seq);
		int commentLvl = Integer.valueOf(lvl);

		CommentDAO cdao = CommentDAO.getInstance();
		CommentDTO cdto = new CommentDTO();

		ArrayList<CommentDTO> list = cdao.selectOneGroupComment(grp);
		if (commentSeq == 0) { // 원글에 대한 댓글이면
			for (CommentDTO c : list) {
				commentSeq++;
				System.out.println("commentSeq: "+commentSeq);
			}
		} 
//		else {
//			commentSeq = commentSeq + 1;
//
//			for (CommentDTO c : list) {
//				if (commentSeq == c.getSeq() && (commentLvl + 1) == c.getLvl()) {
//					commentSeq++;
//					if ((commentLvl + 1) > c.getLvl()) {
//						break;
//					}
//				}
//			}
//		}
		
		 cdto.setMovieno(Integer.valueOf(num));
		 cdto.setId(id);
		 cdto.setName(name);
		 cdto.setContent(content);
		 cdto.setImg(img);
		 cdto.setGrp(Integer.valueOf(grp));
		 cdto.setSeq(commentSeq);
		 cdto.setLvl(commentLvl+1);
		 cdao.updateCommentSeq(cdto);
		 
		 new ViewAction().execute(request, response);
	}
}
