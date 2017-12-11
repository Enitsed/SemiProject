package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.BoardAction;
import action.UserAction;

@WebServlet("/main/*")
public class SemiController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}// end doGet()

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	} // end doPost()

	protected void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String uri = req.getRequestURI();
		String action = uri.substring(uri.lastIndexOf("/"));
		String path = "";
		String command = "";
		System.out.println(action);
		UserAction userAction = new UserAction(); // 유저 관련 명령어 처리 객체
		BoardAction boardAction = new BoardAction(); // 게시판 관련 명령어 처리 객체

		if (action.equals("/*")) {
			// 초기화면 수정필요
			path = "/semiproject/index.jsp";
		}
		////////////////////////////////////////////////////
		// 게시판 기능

		else if (action.equals("/board")) {
			// 게시판 목록 조회하기 (수정필요 : 페이지네이션, )
			command = "list";
			req.setAttribute("command", command);
			boardAction.execute(req, resp);
			path = "/semiproject/board.jsp";
		} else if (action.equals("/write")) {
			// 글쓰기 화면 (수정필요: 세션을 통한 글 작성)
			command = "write";
			req.setAttribute("command", command);
			boardAction.execute(req, resp);
			resp.sendRedirect("/semiproject/main/board");
		} else if (action.equals("/view")) {
			// 게시판 상세보기
			command = "view";
			req.setAttribute("command", command);
			boardAction.execute(req, resp);
			path = "/semiproject/view.jsp";
		} else if (action.equals("/download")) {
			// 첨부파일 다운로드
			command = "download";
			req.setAttribute("command", command);
			boardAction.execute(req, resp);
		} else if (action.equals("/delete")) {
			// 글 삭제
			command = "delete";
			req.setAttribute("command", command);
			boardAction.execute(req, resp);
			resp.sendRedirect("/semiproject/main/board");
		} else if (action.equals("/update")) {
			// 글 수정창 으로 이동
			command = "update";
			req.setAttribute("command", command);
			boardAction.execute(req, resp);
			path = "/semiproject/modify.jsp";
		} else if (action.equals("/modify")) {
			// 글 수정
			command = "modify";
			req.setAttribute("command", command);
			boardAction.execute(req, resp);
		}

		//////////////////////////////////////////////////
		// 유저 관련 기능
		else if (action.equals("/join")) {
			// 회원가입 화면 (수정필요: 디자인 )
			path = "/semiproject/join.jsp";
		} else if (action.equals("/signup")) {
			// 회원가입 기능
			System.out.println("회원가입");
			command = "signup";
			req.setAttribute("command", command);
			userAction.execute(req, resp);
			System.out.println("회원가입 완료");
			path = "/semiproject/index.jsp";
		} else if (action.equals("/login")) {
			// 로그인 창으로 이동
			path = "/semiproject/login.jsp";
		} else if (action.equals("/login_check")) {
			// 로그인 회원 확인 기능
			command = "login_check";
			req.setAttribute("command", command);
			userAction.execute(req, resp);
			path = "/semiproject/index.jsp";
		} else if (action.equals("/logout")) {
			// 로그아웃
			command = "logout";
			req.setAttribute("command", command);
			userAction.execute(req, resp);
		}

		if (path != "") {
			RequestDispatcher dis = req.getRequestDispatcher(path);
			dis.forward(req, resp);
		}

	} // end process

}// end class