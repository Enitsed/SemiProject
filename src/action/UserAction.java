package action;

import java.io.IOException;
import java.util.ArrayList;
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
		} else if (command == "mypage") {
			mypage(req, resp);
		} else if (command == "mypage_update") {
			mypage_update(req, resp);
		} else if (command == "findid") {
			findId(req, resp);
		} else if (command == "findpw") {
			findPw(req, resp);
		} /*
			 * else if (command == "delete") { delete(req, resp); }
			 */

	} // end execute();

	private void logIn(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String user_id = req.getParameter("user_id");
		String user_pw = req.getParameter("user_pw");

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
			resp.sendRedirect("/semiproject/main/index");
		} else {
			System.out.println("로그인 실패");
			session.setAttribute("isMember", false);
			resp.sendRedirect("/semiproject/main/login");
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
		String user_id = req.getParameter("user_id");
		String user_pw = req.getParameter("user_pw");
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

	public void mypage(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session = req.getSession();
		String user_id = (String) session.getAttribute("logOk");

		UserDAO dao = UserDAO.getInstance();
		UserDTO dto = dao.memberinfo(user_id);
		System.out.println(dto.getUser_id());
		if (!(dto.getUser_id() == null)) {
			/*
			 * session.setAttribute("user_name", dto.getUser_name());
			 * session.setAttribute("user_id", dto.getUser_id());
			 * session.setAttribute("user_email", dto.getUser_email());
			 * session.setAttribute("user_address", dto.getUser_address());
			 * session.setAttribute("user_contact", dto.getUser_contact());
			 * session.setMaxInactiveInterval(30 * 60); // 30분 (아무동작 안할 때!)
			 */
			ArrayList<UserDTO> aList = new ArrayList<UserDTO>();
			aList.add(dto);
			session.setAttribute("aList", aList);
		} else {
			System.out.println("userAction/mypage 오류");
		}
	}// end mypage()

	public void mypage_update(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
		String user_id = (String) session.getAttribute("logOk");
		// 업데이트 사항
		String user_pw = req.getParameter("user_pw");
		String user_address = req.getParameter("city") + req.getParameter("district");
		String user_contact = req.getParameter("user_contact");
		String user_email = req.getParameter("user_email");

		UserDTO dto = new UserDTO();

		dto.setUser_pw(user_pw);
		dto.setUser_address(user_address);
		dto.setUser_contact(user_contact);
		dto.setUser_email(user_email);
		dto.setUser_id(user_id);

		System.out.println(user_pw);
		System.out.println(user_contact);
		System.out.println(user_address);
		System.out.println(user_email);

		UserDAO dao = UserDAO.getInstance();
		dao.memUpdate(dto);

		session.invalidate();
		resp.sendRedirect("../main/login");

	}// end mypage_update()

	public void findId(HttpServletRequest req, HttpServletResponse resp) {
		String user_name = req.getParameter("findId_name");
		String user_contact = req.getParameter("findID_contact");

		UserDAO dao = UserDAO.getInstance();
		String find_id = dao.findId(user_name, user_contact);
		System.out.println(find_id);

		// 세션 생성
		HttpSession session = req.getSession();

		// 아이디 찾기
		if (find_id != "") {
			System.out.println("아이디 찾기 성공");
			session.setAttribute("user_id", find_id);
			session.setAttribute("chk", 3);
		} else {
			System.out.println("아이디 찾기 실패 / 없는 회원");
			session.setAttribute("chk", 5);
		}
	}// end findId()

	public void findPw(HttpServletRequest req, HttpServletResponse resp) {
		String user_id = req.getParameter("findPw_id");
		String user_name = req.getParameter("findPW_name");

		UserDAO dao = UserDAO.getInstance();
		String find_pw = dao.findPw(user_id, user_name);
		// 세션 생성
		HttpSession session = req.getSession();

		// 아이디 찾기
		if (find_pw != "") {
			System.out.println("비밀번호 성공");
			session.setAttribute("chk", 4);
			session.setAttribute("user_pw", find_pw);
		} else {
			System.out.println("비밀번호 실패 / 없는 회원");
			session.setAttribute("chk", 5);
		}
	}// end findPw()

	public void confirmId(HttpServletRequest req, HttpServletResponse resp) {
		// 세션 생성
		HttpSession session = req.getSession();

		String user_id = req.getParameter("id");

		UserDAO dao = UserDAO.getInstance();
		int x = dao.Confirm_id(user_id);

		if (x == 1) {
			// 아이디 존재
			System.out.println("아이디 존재");
			session.setAttribute("x", 1);
			session.setAttribute("confirmId", user_id);
		} else {
			// 아이디 없음
			System.out.println("아이디 없음");
			session.setAttribute("x", 0);
			session.setAttribute("confirmId", user_id);
		}
	}// end confirmId()
} // end class
