package com.spring.ex;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.spring.ex.dao.MemberDAO;
import com.spring.ex.dto.MemberDTO;
import com.spring.ex.dao.bbsDAO;
import com.spring.ex.dto.bbsDTO;
import com.spring.ex.dto.paymentDTO;
import com.spring.ex.service.MemberService;
import com.spring.ex.service.bbsService;

import com.spring.ex.service.paymentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

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
	paymentService payService;

	@RequestMapping(value = "/favicon.ico", method = RequestMethod.GET)

	public void favicon( HttpServletRequest request, HttpServletResponse reponse ) {

		try {

			reponse.sendRedirect("/resources/images/favicon.png");

		} catch (IOException e) {

			e.printStackTrace();

		}

	}


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
			String adf = mService.adminflagService(dto);
			dto.setM_flag(adf);
			System.out.println("adf"+dto.getM_flag());
			session.setAttribute("id", dto.getM_id());
			session.setAttribute("adminflag", dto.getM_flag());
			session.setAttribute("name",dto.getM_name());



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

	@RequestMapping(value = "/dbfindID", method = RequestMethod.GET)
	public ModelAndView dbfindID(HttpServletRequest request) {
		MemberDTO dto = new MemberDTO();
		dto.setM_name(request.getParameter("findID_name"));
		dto.setM_phone(request.getParameter("findID_phone"));
		String result = mService.findIDService(dto);
		ModelAndView mv = new ModelAndView("findIDResult");
		mv.addObject("findID", result);
		return mv;
	}

	@RequestMapping(value = "/findIDResult", method = RequestMethod.GET)
	public String findIDResult(HttpServletRequest request) {
		request.getParameter("findID");

		return "findIDResult";
	}




	@RequestMapping(value = "/dbnewPW")
	public ModelAndView dbnewPW(HttpServletRequest request) {
		MemberDTO dto = new MemberDTO();
		//MemberDAO dao = null;

		dto.setM_id(request.getParameter("newPW_id"));
		dto.setM_phone(request.getParameter("newPW_phone"));

		String result = mService.newPW_check_Service(dto);

		System.out.println(dto.getM_id());

		ModelAndView mv;
		if(result == null)
		{
			mv = new ModelAndView("newPWfail");
		} else
		{
			mv = new ModelAndView("newPW2");
			mv.addObject("newPW2_id", dto.getM_id());
			mv.addObject("newPW2_phone", dto.getM_phone());
		}

		return mv;
	}

	@RequestMapping("/dbnewPW2")
	public String dbnewPW2(HttpServletRequest request) {
		MemberDTO dto = new MemberDTO();
		//MemberDAO dao = null;

		dto.setM_id(request.getParameter("newPW2_id"));
		dto.setM_phone(request.getParameter("newPW2_phone"));
		dto.setM_pw(request.getParameter("nPW"));

		System.out.println(dto.getM_id());

		mService.newPWService(dto);
		return "newPWok";
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
		session.removeAttribute("name");
		session.removeAttribute("adminflag");
		return "main";
	}

	//회원가입 축하
	@RequestMapping("/joinsuccess")
	public String joinsuccess() {
		return "joinsuccess";
	}

	//아이디 찾기
	@RequestMapping("/findID")
	public String findID() { return "findID"; }

	// 비밀번호 재설정 하기 전 아이디, 전화번호 확인
	@RequestMapping(value = "/newPW")
	public String newPW(HttpServletRequest request) {
		return "newPW";
	}

	// 비밀번호 재설정
	@RequestMapping(value = "/newPW2")
	public String newPW2(HttpServletRequest request) {
		return "newPW2";
	}

	// 비밀번호 재설정 완료
	@RequestMapping(value = "/newPWok")
	public String newPWok(HttpServletRequest request) {
		return "newPWok";
	}


	//기부현황
	@RequestMapping("/donationreport")
	public ModelAndView donationreport() {


		ModelAndView mv = new ModelAndView("donationreport");
		mv.addObject("paydata", payService.load_payment_service());

		return mv;}



	//개인랭킹
	@RequestMapping("/privaterank")
	public String privaterank() { return "privaterank";}

	//기업랭킹
	@RequestMapping("/companyrank")
	public String companyrank() { return "companyrank";}





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

	//inquirybbs	문의 게시판
	@RequestMapping("/inquirybbs")
	public String inquirybbs() {
		return "inquirybbs";
	}



	//테스트 페이지
	@RequestMapping("/test123")
	public String test123() {
		return "test123";
	}






}