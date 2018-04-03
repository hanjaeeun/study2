package com.study.board.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.study.board.service.BoardServiceImpl;
import com.study.board.vo.Board;
import com.study.servlet.IController;

public class BoardEditController implements IController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		BoardServiceImpl boardService = new BoardServiceImpl();

		String bo_no = request.getParameter("bo_no");
		System.out.printf("controller.process(%s) \n", bo_no);

		if (bo_no == null || bo_no.trim().equals("")) {
			return "redirect:/board/boardList.do";
		} else {

//			System.out.printf("controller.process(%s) \n", bo_no);

			int bono = Integer.parseInt(bo_no);

//			System.out.printf("controller.process(%s) end \n", bono);

			Board board = boardService.getBorad(bono);

//	        System.out.printf("controller.process(%s) return %s \n", bo_no, board.getBo_title());

			request.setAttribute("board", board);

			return "/WEB-INF/view/board/boardEdit.jsp";
		}

	}

}
