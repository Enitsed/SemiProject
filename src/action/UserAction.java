package action;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import dto.UserDTO;

public class UserAction {

	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String command = req.getAttribute("command").toString();
		System.out.println(command);

		if (command == "signup") {
			signUp(req, resp);
		} else if (command == "login_check") {
			logIn(req, resp);
		} else if (command == "logout") {
			logOut(req, resp);
		}

	} // end execute();

	private void logIn(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String user_id = req.getParameter("id");
		String user_pw = req.getParameter("password");

		HashMap<String, String> checker = new HashMap<>();
		checker.put("user_id", user_id);
		checker.put("user_pw", user_pw);

		UserDAO dao = UserDAO.getInstance();

		// 세션 생성
		HttpSession session = req.getSession();

		// 디비에서 멤버 조회 후 로그인 세션
		if (dao.memChk(checker)) {
			System.out.println("로그인 성공");
			session.setAttribute("memberInfo", dao.getMemInfo(checker));
			session.setMaxInactiveInterval(30 * 60); // 30분
			session.setAttribute("isMember", true);
		} else {
			System.out.println("로그인 실패");
			session.setAttribute("isMember", false);
		}

	} // end login();

	private void logOut(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
		boolean isMember = (boolean) session.getAttribute("isMember");
		System.out.println(isMember);
		if (isMember) {
			// 세션 연결 종료
			System.out.println("연결종료");
			session.invalidate();
		}
		resp.sendRedirect("/semiproject/main/*");
	} // end logout();

	private void signUp(HttpServletRequest req, HttpServletResponse resp) {
		String user_id = req.getParameter("id");
		String user_pw = req.getParameter("pw");
		String user_name = req.getParameter("name");
		String user_gender = req.getParameter("gender");
		String user_address = req.getParameter("city") + req.getParameter("district");
		String user_birthday = req.getParameter("birth");
		String user_contact = req.getParameter("contact");
		String user_email = req.getParameter("email");

		UserDTO dto = new UserDTO();
		dto.setUser_id(user_id);
		dto.setUser_pw(user_pw);
		dto.setUser_name(user_name);
		dto.setUser_gender(user_gender);
		dto.setUser_address(user_address);
		dto.setUser_birthday(user_birthday);
		dto.setUser_contact(user_contact);
		dto.setUser_email(user_email);

		UserDAO dao = UserDAO.getInstance();
		HashMap<String, String> memInfo = new HashMap<>();
		memInfo.put("user_id", user_id);
		memInfo.put("user_pw", user_pw);

		if (dao.memChk(memInfo)) {
			return;
		}

		dao.insertMethod(dto);

	} // end signUp();

} // end class
