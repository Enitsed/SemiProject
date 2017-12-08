package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import dao.BoardDAO;
import dto.BoardDTO;
import dto.UserDTO;

public class BoardAction {
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String command = req.getAttribute("command").toString();
		if (command.equals("list")) {
			listAction(req, resp);
		} else if (command.equals("view")) {
			viewAction(req, resp);
		} else if (command.equals("write")) {
			writeAction(req, resp);
		} else if (command.equals("delete")) {
			deleteAction(req, resp);
		}

	} // end execute();

	private void deleteAction(HttpServletRequest req, HttpServletResponse resp) {

	}

	private void writeAction(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session = req.getSession();
		UserDTO udto = (UserDTO) session.getAttribute("memberInfo");
		String user_id = udto.getUser_id();
		BoardDTO bdto = new BoardDTO();
		bdto.setBoard_subject(req.getParameter("subject"));
		bdto.setBoard_upload(req.getParameter("upload"));
		bdto.setBoard_content(req.getParameter("content"));
		bdto.setBoard_loc_city_code(Integer.parseInt(req.getParameter("city_menu")));
		bdto.setBoard_loc_code(Integer.parseInt(req.getParameter("loc_menu")));
		bdto.setBoard_category(req.getParameter("category_menu"));
		BoardDAO dao = BoardDAO.getInstance();
		dao.writeMethod(user_id, bdto);

	}

	private void viewAction(HttpServletRequest req, HttpServletResponse resp) {
		int num = Integer.parseInt(req.getParameter("num"));
		BoardDAO dao = BoardDAO.getInstance();
		dao.readCountMethod(num);
		req.setAttribute("dto", dao.viewMethod(num));

	}

	private void listAction(HttpServletRequest req, HttpServletResponse resp) {
		BoardDAO dao = BoardDAO.getInstance();
		List<BoardDTO> aList = dao.listMethod();
		req.setAttribute("aList", aList);

	}

} // end class
