package com.test.mypet.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {

//	@Autowired
//	private MemberDAO dao;
//	
//	@Autowired
//	MemberService memberService;

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	
	
	@Autowired
	private IMemberDAO dao;

	@RequestMapping(value = "/member/auth.action", method = { RequestMethod.GET })
	public String auth(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		return "member/auth";

	}


	//유저 로그인
	@RequestMapping(value = "/member/login.action", method = { RequestMethod.POST })
	public void login(HttpServletRequest request, HttpServletResponse response, HttpSession session, String id,	String password) { // 1.

		// 1. 데이터 가져오기(id)
		// 2. 인증 티켓 발급
		// 3. 시작 페이지로 이동
		
		session.setAttribute("id", id);

		MemberDTO dto = new MemberDTO();
//		AdminDTO dto_admin = new AdminDTO();

		System.out.println(id);
		System.out.println(password);

		dto.setId(id);
		dto.setPassword(password);
		
		
		
//		dto_admin.setId(id);
//		dto_admin.setPassword(password);
//		
		MemberDTO mdto = dao.memberLogin(dto);
		
		
		session.setAttribute("seqUser", mdto.getSeqUser());
		
		
		System.out.println(mdto.getSeqUser());
//		AdminDTO adto = dao.adminLogin(dto_admin);

//		System.out.println(mdto.getName());
//		System.out.println(dto_admin.getId());

		try {
//			if (mdto.getSeqUser().equals("") || mdto.getSeqUser() == null) {
				if (mdto.getSeqUser() == null) {
//				if (mdto.getId() != id) {
				//response.sendRedirect("/mypet/member/auth.action");
				PrintWriter writer = response.getWriter();
				
				writer.print("<html><body>");
				writer.print("<script>");
				writer.print("alert('failed');");
				writer.print("history.back();");
				writer.print("</script>");
				writer.print("</body></html>");
				
				writer.close();
				//로그인 실패
			} else {
//				response.sendRedirect("/mypet/member/register.action");
				response.sendRedirect("/mypet/main.action");
				//로그인 성공.
			}
		} catch (Exception e) {
			System.out.println(e);
		}


	}

	
	//
	
	//관리자 로그인
	@RequestMapping(value = "/member/login_admin.action", method = { RequestMethod.POST })
	public void login_admin(HttpServletRequest request, HttpServletResponse response, HttpSession session, String id,	String password) { // 1.

		// 1. 데이터 가져오기(id)
		// 2. 인증 티켓 발급
		// 3. 시작 페이지로 이동
		
		session.setAttribute("id", id);


		
		AdminDTO dto_admin = new AdminDTO();

		System.out.println(id);
		System.out.println(password);

		
		dto_admin.setId(id);
		dto_admin.setPassword(password);
		
//		dto_admin.setSeqAdmin(admindto.getSeqAdmin());////
//		
		
		AdminDTO adto = dao.adminLogin(dto_admin);
		
		
		
		
		session.setAttribute("seqAdmin", adto.getSeqAdmin());
		System.out.println(adto.getSeqAdmin());
		
		System.out.println(dto_admin.getId());
		
		

		try {
//			if (adto.getSeqAdmin().equals("")) {
				if (adto.getSeqAdmin() == null) {
				response.sendRedirect("/mypet/member/auth.action");
				//로그인 실패
			} else {
				response.sendRedirect("/mypet/main.action");
				//로그인 성공.
			}
		} catch (Exception e) {
			System.out.println(e);
		}


	}
	
	
	
	@RequestMapping(value = "/member/logout.action", method = { RequestMethod.GET })
	public void logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		// 1. 인증 티켓 폐기
		// 2. 시작 페이지로 이동

		session.removeAttribute("id");

		// 2.
		try {
			response.sendRedirect("/mypet/member/auth.action");
		} catch (IOException e) {
			System.out.println(e);
			e.printStackTrace();
		}

	}
	
	
	
	
	//
	
	
	
//	@RequestMapping(value = "/member/register.action", method = { RequestMethod.GET })
//	public String register(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
//
//		return "member/register";
//
//	}
	
	@RequestMapping(value = "/member/register2.action", method = { RequestMethod.GET })
	public void register2get() throws Exception {
		logger.info("get register");
		
	}
	
//	@RequestMapping(value = "/member/register2.action", method = { RequestMethod.POST })
//	public String register2(HttpServletRequest request, HttpServletResponse response, HttpSession session, MemberDTO ndto) {

	@RequestMapping(value = "/member/register2.action", method = { RequestMethod.POST })
	public String register2(HttpServletRequest request, HttpServletResponse response, MemberDTO ndto) {	
		
		String id = "";
		String password = "";
		String name = "";
		
		String  addr1= "";
		String  addr2= "";
		String  addr3= "";
		String address = "";

		String year = "";
		String month = "";
		String day = "";
		
		String birthdate = "";
		String receiving = "";
		
		
		
		String email = "";
		String tel = "";		
		
		try {
			
			request.setCharacterEncoding("UTF-8");
			
			id = request.getParameter("id");
			password = request.getParameter("password");
			name = request.getParameter("name");
			
			addr1= request.getParameter("addr1");
			addr2= request.getParameter("addr2");
			addr3= request.getParameter("addr3");
			address = addr1+" "+addr2+" "+addr3;

			year = request.getParameter("birth_year");
			month = request.getParameter("birth_month");
			day = request.getParameter("birth_day");
			
			birthdate = year+month+day;
			receiving = "";
			
			if (request.getParameter("receiving") != null ) {
				receiving = "1";
			} else {
				receiving = "0";
				
			}
			
			email = request.getParameter("email");
			tel = request.getParameter("tel");
			
			ndto.setId(id);
			ndto.setPassword(password);
			ndto.setName(name);
			ndto.setAddress(address);
			ndto.setBirthdate(birthdate);
			ndto.setEmail(email);
			ndto.setReceiving(receiving);
			ndto.setTel(tel);
			
			dao.register(ndto);
			
	


			
			//System.out.println(ndto.getAddress());
			
			//response.sendRedirect("/mypet/member/auth.action");
			
			
		} catch (Exception e) {
			System.out.println(e);
			//System.out.println("가입에러남");
		}
		
		
		logger.info("post register");
		

		return "member/auth";

	}
	
	//public String idCheck(@RequestBody String paramData) throws Exception {
	@ResponseBody
	@RequestMapping(value = "/member/idCheck.action")
	public Map<Object, Object> idCheck(@RequestBody String id) {
		
		int count = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		count = dao.idCheck(id);
		map.put("count", count);
		
		return map;
		
//		String id = paramData.trim();
//		System.out.println(id);
//		
//		MemberDTO ndto = dao.idCheck(id);
//		
//		if(ndto != null) {
//			return "-1";
//		} else {
//			System.out.println("null!!");
//			return "0";
//		}
		
//		int result = dao.idCheck(id);
//		
//		return result;
	}
	
	

	@RequestMapping(value = "/member/chat.action", method = RequestMethod.GET)
	public ModelAndView chat(ModelAndView mv, HttpSession session, String id) {
			
		mv.setViewName("member//chat");
		
		
		logger.info("아이디: "+ session.getId()); //세션 id
		
		System.out.println("normal chat page");
		
		List<ChatMessageDTO> list = dao.list(session.getAttribute("id").toString()); //id
		System.out.println(list.size());
		mv.addObject("list", list);
		
		

		
		return mv;
	}
	
	
	
	
	
	
//	@RequestMapping(value = "/member/chatlist.action", method = { RequestMethod.GET })
//	public String list(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
//
//		// 1. DB 위임 -> select
//		// 2. JSP 호출하기
//
//		
//
//		//return "member.chatlist";
//
//	}
//	
	
	
	

}
