package com.study.member.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.study.member.service.MemberServiceImpl;
import com.study.member.vo.Member;
import com.study.servlet.IController;

public class MemberInsertController implements IController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		MemberServiceImpl memberService = new MemberServiceImpl();
		String editPage = "/WEB-INF/view/member/memberInsert.jsp";
		
		String mem_id = request.getParameter("mem_id");
		String mem_pwd = request.getParameter("mem_pwd");
		String mem_name = request.getParameter("mem_name");
		String mem_phone = request.getParameter("mem_phone");
		String mem_email = request.getParameter("mem_email");
		
		
		Member member = new Member();
		member.setMem_id(mem_id);
		member.setMem_pwd(mem_pwd);
		member.setMem_name(mem_name);
		member.setMem_phone(mem_phone);
		member.setMem_email(mem_email);
		
		int cnt = memberService.registMember(member); 
		if(cnt > 0) {
			request.setAttribute("message", "회원 등록을 완료했습니다.");
		}else {
			request.setAttribute("message", "회원 등록을 실패했습니다.");
		}
		return editPage;
	}

}
