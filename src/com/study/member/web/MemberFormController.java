package com.study.member.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.study.member.service.MemberServiceImpl;
import com.study.member.vo.Member;
import com.study.servlet.IController;

public class MemberFormController implements IController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		MemberServiceImpl memberService = new MemberServiceImpl();
		String editPage = "/WEB-INF/view/member/memberForm.jsp";
/*		String mem_id = request.getParameter("mem_id");
		Member member = memberService.getMember(mem_id);
		request.setAttribute("member", member);*/
		return editPage;
	}

}
