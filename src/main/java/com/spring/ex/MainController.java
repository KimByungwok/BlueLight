package com.spring.ex;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.spring.ex.dao.MemberDAO;
import com.spring.ex.dto.MemberDTO;
import com.spring.ex.dao.bbsDAO;
import com.spring.ex.dto.bbsDTO;
import com.spring.ex.service.MemberService;
import com.spring.ex.service.bbsService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

@Controller
public class MainController {



	@Inject
	MemberService mService;

	@Inject
	bbsService bService;


	//회원가입처리
	@RequestMapping("/registerOk")
	public String registerOk(HttpServletRequest request) {
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
		mService.insertMember(dto);
		return "joinsuccess";
	}
	@RequestMapping("/loginOK")
	public String loginOK(HttpServletRequest request)
	{

		System.out.println("loginOK");
		MemberDTO dto = new MemberDTO();
		MemberDAO dao = null;

		dto.setM_id(request.getParameter("id"));
		dto.setM_pw(request.getParameter("pw"));

		int result = mService.loginService(dto);
		System.out.println(result);
		HttpSession session = request.getSession();
		if(result == 1)
		{
			//로그인성공
			session.setAttribute("id", dto.getM_id());


			List<String> as = mService.adminflagService(dto);
			System.out.println(as);
			return "main";
		} else
		{
			//로그인실패
			return "main";
		}
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

	@RequestMapping("/logout")
	public String logoutForm(HttpServletRequest request) {

		HttpSession session = request.getSession();
		session.removeAttribute("id");
		return "main";
	}



	//회원가입 축핳ㅎㅎ
	@RequestMapping("/joinsuccess")
	public String joinsuccess() {
		return "joinsuccess";
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

	//FAQ
	@RequestMapping("/faq")
	public String faq() {
		return "faq";
	}

	//inquirybbs
	@RequestMapping("/inquirybbs")
	public String inquirybbs() {
		return "inquirybbs";
	}

	//earningreport
	@RequestMapping("/earningreport")
	public String earningreport() {
		return "/adminpage/earningreport";
	}

	//memberdetail
	@RequestMapping("/memberdetail")
	public String memberdetail() {
		return "/adminpage/memberdetail";
	}

	//membermodify
	@RequestMapping("/membermodify")
	public String membermodify() {
		return "/adminpage/membermodify";
	}

	//membermypage
	@RequestMapping("/membermypage")
	public String membermypage() {
		return "/adminpage/membermypage";
	}

	//membersearch
	@RequestMapping("/membersearch")
	public String membersearch() {
		return "/adminpage/membersearch";
	}

	//테스트 페이지
	@RequestMapping("/test123")
	public String test123() {
		return "test123";
	}



}