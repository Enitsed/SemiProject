package action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.BoardDAO;
import dao.ReplyDAO;
import dto.BoardDTO;
import dto.ReplyDTO;
import dto.UserDTO;

public class BoardAction {
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String command = req.getAttribute("command").toString();
		HttpSession session = req.getSession();
		Boolean isMember = (Boolean) session.getAttribute("isMember");
		UserDTO dto = (UserDTO) session.getAttribute("memberInfo");

		if (command.equals("list")) {
			listAction(req, resp);
		} else if (command.equals("view")) {
			viewAction(req, resp, isMember, dto);
		} else if (command.equals("write")) {
			writeAction(req, resp, isMember, dto);
		} else if (command.equals("delete")) {
			deleteAction(req, resp, isMember, dto);
		} else if (command.equals("download")) {
			fileDownloadAction(req, resp, isMember);
		} else if (command.equals("update")) {
			int num = Integer.parseInt(req.getParameter("num"));
			BoardDAO dao = BoardDAO.getInstance();
			req.setAttribute("dto", dao.viewMethod(num));
		} else if (command.equals("modify")) {
			MultipartRequest multi = modifyAction(req, resp, isMember, dto);
			try {
				resp.sendRedirect("view?num=" + multi.getParameter("num"));
			} catch (NumberFormatException | IOException e) {
				e.printStackTrace();
			}

			/////////////////////////// 댓글

		} else if (command.equals("reply")) {
			replyWriteAction(req, resp);
			try {
				resp.sendRedirect("/semiproject/main/view?num=" + Integer.parseInt(req.getParameter("num")));
			} catch (NumberFormatException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (command.equals("reply_delete")) {
			replyDeleteAction(req, resp);
			try {
				resp.sendRedirect("/semiproject/main/view?num=" + Integer.parseInt(req.getParameter("num")));
			} catch (NumberFormatException | IOException e) {
				e.printStackTrace();
			}
		}

	} // end execute();

	private void fileDownloadAction(HttpServletRequest req, HttpServletResponse resp, Boolean isMember) {
		int num = Integer.parseInt(req.getParameter("num"));
		BoardDAO dao = BoardDAO.getInstance();
		String filename = dao.fileMethod(num);

		if (isMember == null || !isMember)
			return;

		try {
			// 파일명 한글처리
			String convName = URLEncoder.encode(filename, "UTF-8");
			convName = convName.replace("+", " ");
			// 컨텐트 타입
			resp.setContentType("application/octet-stream");
			// 다운로드 파일명
			resp.setHeader("Content-Disposition", "attachment;filename=" + convName + ";");
			// String saveDirectory = req.getRealPath("/");
			// File file = new File(saveDirectory + "/temp/" + filename);
			File file = new File(
					req.getSession().getServletContext().getRealPath("/") + "semiproject\\upload\\" + filename);
			// 서버의 파일첨부 읽어오기
			FileInputStream is = new FileInputStream(file);
			BufferedInputStream bs = new BufferedInputStream(is);
			// 클라이언트에 파일내용보내기
			BufferedOutputStream bo = new BufferedOutputStream(resp.getOutputStream());

			byte buffer[] = new byte[1024];
			int len = 0;
			while ((len = bs.read(buffer)) > 0) {
				bo.write(buffer, 0, len);
				bo.flush();
			}
			// 스트림 연결 종료
			bs.close();
			is.close();
			bo.close();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	} // end downloadAction()

	private void deleteAction(HttpServletRequest req, HttpServletResponse resp, Boolean isMember, UserDTO dto) {
		HttpSession session = req.getSession();
		Boolean isWriter = (Boolean) session.getAttribute("isWriter");
		BoardDAO dao = BoardDAO.getInstance();
		int num = Integer.parseInt(req.getParameter("num"));
		BoardDTO bdto = dao.viewMethod(num);
		String saveDirectory = req.getSession().getServletContext().getRealPath("/") + "semiproject/upload";
		String filePath = bdto.getBoard_upload();
		if (isMember == null || !isMember || !isWriter)
			return;

		if (filePath != null) {
			File file = new File(saveDirectory, filePath);
			file.delete();
		}

		dao.deleteMethod(num);

	} // end deleteAction()

	private MultipartRequest modifyAction(HttpServletRequest req, HttpServletResponse resp, Boolean isMember,
			UserDTO dto) {
		MultipartRequest multi = null;
		HttpSession session = req.getSession();
		Boolean isWriter = (Boolean) session.getAttribute("isWriter");
		BoardDAO dao = BoardDAO.getInstance();
		String saveDirectory = session.getServletContext().getRealPath("/") + "semiproject/upload";
		File file = new File(saveDirectory);
		if (!file.exists())
			file.mkdir();
		int maxPostSize = 1000000000; // 1GB
		String encoding = "UTF-8";

		BoardDTO bdto = new BoardDTO();

		if (isMember == null || !isMember || !isWriter)
			return null;

		try {
			multi = new MultipartRequest(req, saveDirectory, maxPostSize, encoding, new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}

		int num = Integer.parseInt(multi.getParameter("num"));

		// board 테이블에 첨부파일의 저장여부 검색
		String filename = dao.fileMethod(num);

		// 수정 첨부파일이 있으면
		if (multi.getFilesystemName("upload") != null) {
			// board 테이블에 첨부파일이 저장이 되어 있으면
			if (filename != null) {
				// board 테이블의 첨부파일을 삭제
				File file2 = new File(saveDirectory, filename);
				file2.delete();
			}
			bdto.setBoard_upload(multi.getFilesystemName("upload"));
		} else {
			// 수정 첨부파일이 없으면
			if (filename != null) {
				bdto.setBoard_upload(filename);
			}
		}
		bdto.setBoard_subject(multi.getParameter("subject"));
		bdto.setBoard_content(multi.getParameter("content"));
		if (!multi.getParameter("city_menu").equals(""))
			bdto.setBoard_loc_city_code(Integer.parseInt(multi.getParameter("city_menu")));
		if (!multi.getParameter("loc_menu").equals(""))
			bdto.setBoard_loc_code(Integer.parseInt(multi.getParameter("loc_menu")));

		bdto.setBoard_category(multi.getParameter("category_menu"));
		bdto.setBoard_num(num);
		dao.updateMethod(bdto);

		return multi;
	} // end modifyAction()

	private void writeAction(HttpServletRequest req, HttpServletResponse resp, Boolean isMember, UserDTO dto) {
		MultipartRequest multi = null;
		HttpSession session = req.getSession();
		String saveDirectory = session.getServletContext().getRealPath("/") + "semiproject/upload";
		File file = new File(saveDirectory);
		if (!file.exists())
			file.mkdir();
		int maxPostSize = 1000000000; // 1GB
		String encoding = "UTF-8";

		if (isMember == null || !isMember)
			return;

		try {
			multi = new MultipartRequest(req, saveDirectory, maxPostSize, encoding, new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}

		UserDTO udto = (UserDTO) session.getAttribute("memberInfo");
		String user_id = udto.getUser_id();
		BoardDTO bdto = new BoardDTO();
		bdto.setBoard_subject(multi.getParameter("subject"));
		bdto.setBoard_upload(multi.getFilesystemName("upload"));
		bdto.setBoard_content(multi.getParameter("content"));
		if (!multi.getParameter("city_menu").equals(""))
			bdto.setBoard_loc_city_code(Integer.parseInt(multi.getParameter("city_menu")));
		if (!multi.getParameter("loc_menu").equals(""))
			bdto.setBoard_loc_code(Integer.parseInt(multi.getParameter("loc_menu")));
		bdto.setBoard_category(multi.getParameter("category_menu"));

		BoardDAO dao = BoardDAO.getInstance();
		dao.writeMethod(user_id, bdto);

	} // end writeAction();

	private void viewAction(HttpServletRequest req, HttpServletResponse resp, Boolean isMember, UserDTO dto) {
		int num = Integer.parseInt(req.getParameter("num"));
		BoardDAO dao = BoardDAO.getInstance();

		HttpSession session = req.getSession();
		UserDTO udto = (UserDTO) session.getAttribute("memberInfo");
		BoardDTO bdto = dao.viewMethod(num);
		Boolean isWriter = false;

		if (udto != null) {
			String connectedUserId = udto.getUser_id();
			isWriter = (connectedUserId.equals(bdto.getUser_id())) ? true : false;
		}

		session.setAttribute("isWriter", isWriter);

		if (isMember == null || !isMember)
			return;

		dao.readCountMethod(num);
		req.setAttribute("dto", bdto);

		ReplyDAO rdao = ReplyDAO.getInstance();
		List<ReplyDTO> rList = rdao.listMethod(num);

		req.setAttribute("rList", rList);
	} // end viewAction();

	private void listAction(HttpServletRequest req, HttpServletResponse resp) {
		BoardDAO dao = BoardDAO.getInstance();
		String category = req.getParameter("category"); // 보여줄 카테고리
		String searchValue = req.getParameter("searchValue");
		String searchKey = req.getParameter("searchKey");
		List<BoardDTO> aList = null;
		int boardCount = dao.countRow(category, searchKey, searchValue); // 해당 카테고리 글 수
		int currentPage = 1; // 현재 페이지
		if (req.getParameter("pageNum") != null) {
			currentPage = Integer.parseInt(req.getParameter("pageNum")); // 현재 페이지
			req.setAttribute("currentPage", currentPage);
		}
		final int startPage = 1; // 시작 페이지
		int pageCount = pageCount(boardCount); // 페이지 개수
		final int showRows = 9; // 보여줄 글 개수
		int startRow = (currentPage - 1) * showRows + 1; // 어디서 부터 보여줄 것인지
		int endRow = currentPage * showRows; // 어디까지 보여줄 것인지

		System.out.println(searchValue + " : " + searchKey);
		aList = dao.listMethod(category, startRow, endRow, searchValue, searchKey);
		req.setAttribute("searchKey", searchKey); // 검색 키
		req.setAttribute("searchValue", searchValue); // 검색 값
		req.setAttribute("endPage", pageCount); // 마지막 페이지
		req.setAttribute("startPage", startPage); // 첫 페이지
		req.setAttribute("category", category); // 카테고리
		req.setAttribute("aList", aList); // 보여줄 글 목록
	} // end listAction();

	private int pageCount(int boardCount) {
		int showRows = 9; // 보여줄 게시글 수
		int pageCnt = (boardCount % showRows) > 0 ? (boardCount / showRows) + 1 : 0;
		// boardCount(게시글 수)를 showRows(보여줄 게시글 수)로 나눈 수가 0보다 크면 1페이지를 더 추가한다.
		if (pageCnt < 1) {
			pageCnt = 1;
		}
		return pageCnt;
	}

	///////////////////////////////////// 댓글

	private void replyWriteAction(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session = req.getSession();
		UserDTO udto = (UserDTO) session.getAttribute("memberInfo");
		String user_id = udto.getUser_id();
		int num = Integer.parseInt(req.getParameter("num"));
		ReplyDTO rdto = new ReplyDTO();
		rdto.setReply_content(req.getParameter("comment_content"));
		ReplyDAO dao = ReplyDAO.getInstance();
		dao.replyWriteMethod(user_id, rdto, num);
	} /////////////////////////// 댓글등록

	private void replyDeleteAction(HttpServletRequest req, HttpServletResponse resp) {
		int num = Integer.parseInt(req.getParameter("reply_num"));
		ReplyDAO dao = ReplyDAO.getInstance();
		dao.replyDeleteMethod(num);
	} /////////////// 댓글삭제

} // end class
