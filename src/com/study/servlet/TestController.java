package com.study.servlet;

import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.study.member.service.MemberServiceImpl;
import com.study.member.vo.Member;
import com.study.member.web.MemberEditController;
import com.study.member.web.MemberListController;
import com.study.member.web.MemberViewController;

public class TestController extends HttpServlet {

	// url, 컨트롤러 정보를 보관할 맵
	private Map<String, IController> handlerMap = new HashMap<>();

	@Override
	public void init() throws ServletException {
		String configFile = getInitParameter("configFile");
		Properties prop = new Properties();
		String configFilePath = getServletContext().getRealPath(configFile);

		try(FileInputStream fis = new FileInputStream(configFilePath)) {
            prop.load(fis);
		}catch (Exception e) {
		throw new ServletException(e);
		}
     
		Iterator keyIter = prop.keySet().iterator();
		while(keyIter.hasNext()) {
			String command = (String) keyIter.next();
			String handlerClassName = prop.getProperty(command);
			
			
			try {
			    Class<?>handlerClass = Class.forName(handlerClassName);
				IController controller = (IController)handlerClass.newInstance();
				handlerMap.put(command, controller); // 맵에 저장 
			} catch (ClassNotFoundException  | InstantiationException | IllegalAccessException e) {
				System.out.println(command + "를 로드하지 못했습니다"+e.getMessage());
			}
			
			
		}
				
				
	}

	@Override
	// 1. 사용자의 요청을 받음
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//모든페이지 에 공통적인 부분 처리 
	 request.setCharacterEncoding("utf-8");
		
		// 2. 사용자 요청 분석
		// -- 파라미터 : /member?type=list, /member?type=view
		// -- 요청 uri : /member/list , /member/view
		String uri = request.getRequestURI();
		// /study/member/memberList.do
		uri = uri.substring(request.getContextPath().length());
		String viewPage = null;
		IController controller = null;
		//사용자 요청 정보 맵 : handlerMap
		if(handlerMap.containsKey(uri)){
			controller = handlerMap.get(uri);
			if(controller != null) {
			viewPage = controller.process(request, response);
			//viewPage 가 널 이거나 , 리다이렉트는 어떻게 처리 ????
			// 5. 알맞은 뷰로 포워드
			// 해당 컨트롤러가 직접 출력을 한 경우(다운로드,) 
			// viewPage = null 
			// 리다이렉트를 한 경우 viewPage 가 "redirect :" 으로 시작 할 경우
			if(viewPage !=null) {
				System.out.println(uri + ", viewPage" + viewPage);
			if(viewPage.startsWith("redirect:")) {	
			  response.sendRedirect(request.getContextPath() + viewPage.substring(9));
			}else{
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			}
						
			
			}
			}else {
				//컨트롤러가 null 인 경우 
				throw new ServletException(uri + "의 컨트롤러가 null 입니다.");
			}	
			}else {
			// 요청 uri 가 없으므로 404 예외 던짐 
			response.sendError(response.SC_NOT_FOUND, "누구세요 ?? ~~~~");
			
			
		}
		
		
		
		// MemberServiceImpl memberService = new MemberServiceImpl();

		// 3. 모델을 사용해서 기능 수행

		// 4. 결과를 속성에 저장 (request, session)

		/*if (uri.equals("/member/memberList.do")) {
			controller = new MemberListController();
			// List<Member> list = memberService.getMemberList();
			// request.setAttribute("list", list);
			// viewPage = "/member/memberList.jsp";
		} else if (uri.equals("/member/memberView.do")) {
			controller = new MemberViewController();
		} else if (uri.equals("/member/memberEdit.do")) {
			controller = new MemberEditController();
		} else {
			throw new ServletException("지금은 memberList 만 .......");
		}*/
		

	
	}
}
