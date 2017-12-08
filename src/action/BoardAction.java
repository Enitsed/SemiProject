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
import javax.websocket.Session;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
		} else if (command.equals("download")) {
			fileDownloadAction(req, resp);
		}

	} // end execute();

	private void fileDownloadAction(HttpServletRequest req, HttpServletResponse resp) {
		int num = Integer.parseInt(req.getParameter("num"));
		BoardDAO dao = BoardDAO.getInstance();
		String filename = dao.fileMethod(num);

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
			File file = new File("c:/temp/" + filename);

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

	}

	private void deleteAction(HttpServletRequest req, HttpServletResponse resp) {

	}

	private void writeAction(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session = req.getSession();
		MultipartRequest multi = null;
		String saveDirectory = session.getServletContext().getRealPath("/") + "/semiproject/upload";
		File file = new File(saveDirectory);
		if (!file.exists())
			file.mkdir();
		int maxPostSize = 1000000000; // 1GB
		String encoding = "UTF-8";

		try {
			multi = new MultipartRequest(req, saveDirectory, maxPostSize, encoding, new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}

		UserDTO udto = (UserDTO) session.getAttribute("memberInfo");
		System.out.println(udto);
		String user_id = udto.getUser_id();
		BoardDTO bdto = new BoardDTO();
		bdto.setBoard_subject(multi.getParameter("subject"));
		bdto.setBoard_upload(multi.getFilesystemName("upload"));
		bdto.setBoard_content(multi.getParameter("content"));
		bdto.setBoard_loc_city_code(Integer.parseInt(multi.getParameter("city_menu")));
		bdto.setBoard_loc_code(Integer.parseInt(multi.getParameter("loc_menu")));
		bdto.setBoard_category(multi.getParameter("category_menu"));

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
