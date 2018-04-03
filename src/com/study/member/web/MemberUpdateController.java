package com.study.member.web;

import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.study.member.service.MemberServiceImpl;
import com.study.member.vo.Member;
import com.study.servlet.IController;

public class MemberUpdateController implements IController{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		MemberServiceImpl memberService = new MemberServiceImpl();
		String viewPage = "/WEB-INF/view/member/memberUpdate.jsp";
		String mem_id = request.getParameter("mem_id");
		// get ,set 안하려면 
		// BeanUtils 사용 하는데 
		// 먼저  commons-beanutils , collection jar 를 다운로드 
		/*String mem_name = request.getParameter("mem_name");
		String mem_phone = request.getParameter("mem_phone");
		String mem_email = request.getParameter("mem_email");*/
		Member member = new Member();
		/*member.setMem_id(mem_id);
		member.setMem_name(mem_name);
		member.setMem_phone(mem_phone);
		member.setMem_email(mem_email);
		*/
		try {
			BeanUtils.populate(member,request.getParameterMap());
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		int cnt = memberService.modifyMember(member);
		if(cnt > 0) {
			request.setAttribute("message", "회원수정을 완료했습니다.");	
		}else {
			request.setAttribute("message", "회원수정을 실패했습니다.");
		}
		
		return viewPage;
	}

}
