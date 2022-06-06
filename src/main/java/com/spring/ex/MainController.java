package com.spring.ex;

import com.spring.ex.dao.MemberDAO;
import com.spring.ex.dto.MemberDTO;
import com.spring.ex.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
	//회원가입처리
	@RequestMapping("/registerOk")
	public String registerOk(HttpServletRequest request,  RedirectAttributes ra) {
		//개인은 flag 0, s_number 0
		//기업은 flag 1, s_number 사업자번호
		System.out.println("RegisterOk");
		MemberDTO dto = new MemberDTO();
		MemberDAO dao = null;
		dto.setM_flag(request.getParameter("flag"));
		dto.setM_id(request.getParameter("id"));
		dto.setM_pw(request.getParameter("pw"));
		dto.setM_name(request.getParameter("name"));
		dto.setM_phone(request.getParameter("phonenum"));
		dto.setM_address(request.getParameter("address"));
		dto.setM_email(request.getParameter("email"));
		dto.setM_s_number(request.getParameter("companynum"));

		System.out.println(dto.getM_s_number());


//		int result = mService.checkID(dto);
//		//중복1 미중복0
//		if(result == 1) {
//			ra.addFlashAttribute("result", "registerFalse");
//			//return "/user/register";
//		} else if(result == 0) {
//			mService.checkID(dto);
//			ra.addFlashAttribute("result", "registerOK");
//		}
		mService.insertMember(dto);
		return "joinsuccess";
	}
	@RequestMapping(value="/dbCheckID", method = RequestMethod.GET)
	public String dbCheckID(HttpServletRequest request) {
		String id = request.getParameter("user_id");
		System.out.println("아이디가져옴"+ id);
		MemberDTO dto = new MemberDTO();
		dto.setM_id(id);
		int result = mService.checkID(dto);
		HttpSession session = request.getSession();
		session.setAttribute("result", result);
		return "CheckID";


	}
//	@ResponseBody
//	@RequestMapping(value="/idCheck", method = RequestMethod.GET)
//	public int idCheck(String id) {
//		System.out.println("controller");
//		System.out.println(id);
//		MemberDTO dto = new MemberDTO();
//		dto.setM_id(id);
//		int result = mService.checkID(dto);
//		System.out.println(result);
//		return result;
//	}

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

	//현장기부 신청 완료
	@RequestMapping("/livedonationsuccess")
	public String livedonationsuccess() { return "/donationpage/livedonationsuccess";}

	//후원하기 결제 완료
	@RequestMapping("/livedonation1payment")
	public String livedonation1payment() { return "/donationpage/livedonation1payment";}

	//마이페이지
	@RequestMapping("/mypage")
	public String mypage() {
		return "mypage";
	}

	//마이페이지 정보수정
	@RequestMapping("/mypageupdate")
	public String mypageupdate() {
		return "mypageupdate";
	}

	//마이페이지 비번수정
	@RequestMapping("/changepw")
	public String changepw() {
		return "changepw";
	}

	//문의하기
	@RequestMapping("/inquiry")
	public String inquiry() {
		return "inquiry";
	}

	//어드민 인덱스
	@RequestMapping("/index123")
	public String index123() {
		return "/adminpage/index123";
	}

	//어드민 차트
	@RequestMapping("/charts")
	public String adminchart() {
		return "/adminpage/charts";
	}

	//어드민 테이블
	@RequestMapping("/tables")
	public String admintable() {
		return "/adminpage/tables";
	}

	//어드민 사이드 네비 라이트
	@RequestMapping("/layout-sidenav-light")
	public String adminlayoutsidenavlight() {
		return "/adminpage/layout-sidenav-light";
	}

	//어드민 스태틱
	@RequestMapping("/layout-static")
	public String adminlayoutstatic() {
		return "/adminpage/layout-static";
	}

	//회원 검색 - 김범준
	@RequestMapping("/membersearch")
	public String membersearch() {
		return "/adminpage/membersearch";
	}

	//회원 상세 - 김범준
	@RequestMapping("/memberdetail")
	public String memberdetail() {
		return "/adminpage/memberdetail";
	}

	//게시판 상세 - 김범준
	@RequestMapping("/bbsdetail")
	public String bbsdetail() {
		return "/adminpage/bbsdetail";
	}


	//테스트 페이지
	@RequestMapping("/test123")
	public String test123() {
		return "test123";
	}



}