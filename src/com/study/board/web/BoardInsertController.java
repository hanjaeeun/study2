package com.study.board.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.study.board.service.BoardServiceImpl;
import com.study.board.vo.Board;
import com.study.member.service.MemberServiceImpl;
import com.study.member.vo.Member;
import com.study.servlet.IController;

public class BoardInsertController implements IController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		BoardServiceImpl boardService = new BoardServiceImpl();
		String editPage = "/WEB-INF/view/board/boardInsert.jsp";
		System.out.println("bono");
		
		String bo_title = request.getParameter("bo_title");
		String bo_passwd = request.getParameter("bo_passwd");
		String bo_email = request.getParameter("bo_email");
		String bo_content = request.getParameter("bo_content");
		String bo_writer = request.getParameter("bo_writer");
		
		
		Board board = new Board();
		
		board.setBo_title(bo_title);
		board.setBo_passwd(bo_passwd);
		board.setBo_email(bo_email);
		board.setBo_content(bo_content);
		board.setBo_writer(bo_writer);
		
		int cnt = boardService.registBoard(board); 
		if(cnt > 0) {
			request.setAttribute("message", "게시판 삽입을 완료했습니다.");
		}else {
			request.setAttribute("message", "게시판 삽입을 실패했습니다.");
		}
		return editPage;
	}

}
