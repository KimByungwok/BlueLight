package com.spring.ex;

import com.spring.ex.dao.MemberDAO;
import com.spring.ex.dto.MemberDTO;
import com.spring.ex.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

@Controller
public class MainController {



	@Inject
	MemberService mService;

	//public MemberDAO dao;

	//public MemberDTO dto = new MemberDTO();
	//회원가입
	@RequestMapping("/register")
	public String registerForm(Model model) {
		return "register";
	}

	//   @RequestMapping("/registerOk")
//   public String registerOk(@RequestParam("id") String  id, @RequestParam("pw") String pw)
//   {
//
//      new MemberRegister(id, pw);
//      return "login";
	//}
	@RequestMapping(value = "/test")
	public String testDAO() {
		//MemberDTO dto = null;

		MemberDTO dto = new MemberDTO();
		dto.setM_id("wa");
		dto.setM_pw("A");
		System.out.println(dto.getM_id());
		System.out.println(dto.getM_pw());
		//dao.insertMember(dto);
		int result = mService.testMember(dto);
		System.out.println("testDAO 발동");
		return "login";
	}
	@RequestMapping("/registerOk")
	public String registerOk(HttpServletRequest request, Model model) {
		System.out.println("RegisterOk");
		//System.out.println(request.getParameter("id"));
		//model.addAttribute("id", request.getAttribute("id"));
		//model.addAttribute("pw", request.getAttribute("pw"));
		MemberDTO dto = new MemberDTO();
		MemberDAO dao = null;
		dto.setM_id(request.getParameter("id"));
		dto.setM_pw(request.getParameter("pw"));
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		//System.out.println("아이디"+ dto.getM_id());
		//System.out.println("비밀번호" + dto.getM_pw());

		mService.insertMember(dto);

		return "login";
	}

	//인덱스 템플릿 페이지
	@RequestMapping("/index")
	public String indexForm() {
		return "index";
	}

	//메인페이지
	@RequestMapping("/main")
	public String mainForm() {
		return "main";
	}

	//404
	@RequestMapping("/404")
	public String ErrorForm() {
		return "404";
	}

	//회원가입 선택
	@RequestMapping("/registerselect")
	public String registerselectForm() {
		return "registerselect";
	}

	//개인 회원가입
	@RequestMapping("/privateregister")
	public String parivateregisterForm() {
		return "privateregister";
	}

	//기업 회원가입
	@RequestMapping("/companyregister")
	public String companyregisterForm() {
		return "companyregister";
	}

	//로그인
	@RequestMapping("/login")
	public String loginForm() {
		return "login";
	}

	//회원가입 축핳ㅎㅎ
	@RequestMapping("/joinsuccess")
	public String joinsuccess() {
		return "joinsuccess";
	}

	//공지사항
	@RequestMapping("/notice")
	public String notice() {
		return "notice";
	}

	//후원일정
	@RequestMapping("/sponsorschedule")
	public String sponsorschedule() {
		return "sponsorschedule";
	}

	//기부현황
	@RequestMapping("/donationreport")
	public String donationreport() { return "donationreport";}

	//후원하기
	@RequestMapping("/donation")
	public String donation() { return "donation";}

	//현장 기부
	@RequestMapping("/livedonation")
	public String livedonation() { return "livedonation";}

	//개인랭킹
	@RequestMapping("/privaterank")
	public String privaterank() { return "privaterank";}

	//기업랭킹
	@RequestMapping("/companyrank")
	public String companyrank() { return "companyrank";}

	//관리자 메인
	@RequestMapping("/adminmain")
	public String adminmain() { return "adminmain";}

	//후원하기1
	@RequestMapping("/donation1")
	public String donation1() { return "/donationpage/donation1";}

	//후원하기1 결제
	@RequestMapping("/donation1payment")
	public String donation1payment() { return "/donationpage/donation1payment";}

	//후원하기 결제 완료
	@RequestMapping("/donationsuccess")
	public String donationsuccess() { return "/donationpage/donationsuccess";}

	//테스트 페이지
	@RequestMapping("/test123")
	public String test123() {
		return "test123";
	}



}