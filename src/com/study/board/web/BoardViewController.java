package com.study.board.web;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.study.board.service.BoardServiceImpl;
import com.study.board.vo.Board;
import com.study.member.service.MemberServiceImpl;
import com.study.member.vo.Member;
import com.study.servlet.IController;

public class BoardViewController implements IController{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws ServletException {
	
		BoardServiceImpl boardService = new BoardServiceImpl();
		
		String bo_no = request.getParameter("bo_no");	
		//아이디가 널, 비어있으면 회원 목록을 리다이렉트 
		if(bo_no == null || bo_no.trim().equals("")) {
			return "redirect:/board/boardList.do";
		}
		Board board = boardService.getBorad(Integer.parseInt(bo_no));
		request.setAttribute("board", board);
		  
		return "/WEB-INF/view/board/boardView.jsp";
	}

}
