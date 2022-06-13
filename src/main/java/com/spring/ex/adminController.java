package com.spring.ex;

import com.spring.ex.dto.DonationDTO;
import com.spring.ex.dto.MemberDTO;
import com.spring.ex.dto.bbsDTO;
import com.spring.ex.service.adminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class adminController {
    @Inject
    adminService adService;

    //adminpage 관리자 메인
    @RequestMapping("/admin")
    public String admin() {
        return "/adminpage/admin";
    }

    //earningreport 수입현황
    @RequestMapping("/earningreport")
    public String earningreport() {
        return "/adminpage/earningreport";
    }

    //membermodify	관리자 회원정보수정
    @RequestMapping("/membermodify")
    public ModelAndView membermodify(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("/adminpage/membermodify");

        String sqlflag = "m_id";
        String sqlvalue = request.getParameter("fId");
        Map<String,Object> sqlflagmap = new HashMap<String,Object>();
        sqlflagmap.put("sqlflag", sqlflag);
        sqlflagmap.put("sqlvalue", sqlvalue);
        List<MemberDTO> userload = adService.memberList(sqlflagmap);
        System.out.println(userload);
        mv.addObject("list", userload);
        mv.addObject("fId", sqlvalue);
        return mv;
    }
    //membermodifyOK	관리자 회원정보수정 처리 로직
    @RequestMapping("membermodifyOK")
    public String membermodifyOK(HttpServletRequest request) {
        MemberDTO mDTO = new MemberDTO();
        mDTO.setM_flag(request.getParameter("txtModifym_admin"));
        mDTO.setM_id(request.getParameter("txtModifym_id"));
        mDTO.setM_pw(request.getParameter("txtModifym_pw"));
        mDTO.setM_name(request.getParameter("txtModifym_name"));
        mDTO.setM_phone(request.getParameter("txtModifym_phone"));
        mDTO.setM_address(request.getParameter("txtModifym_address"));
        mDTO.setM_email(request.getParameter("txtModifym_email"));

        String sn = request.getParameter("txtModifym_s_number");
        if(sn.equals(""))
        {
            mDTO.setM_s_number(null);
        } else {
            mDTO.setM_s_number(sn);
        }

        adService.updateMember(mDTO);

        return "redirect:/membermypage?fId="+request.getParameter("txtModifym_id");
    }

    //membermypage 관리자 회원상세
    @RequestMapping("/membermypage")
    public ModelAndView membermypage(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("/adminpage/membermypage");


        String sqlflag = "m_id";
        String sqlvalue = request.getParameter("fId");
        Map<String,Object> sqlflagmap = new HashMap<String,Object>();
        sqlflagmap.put("sqlflag", sqlflag);
        sqlflagmap.put("sqlvalue", sqlvalue);
        List<MemberDTO> userload = adService.memberList(sqlflagmap);
        System.out.println(userload);
        mv.addObject("list", userload);
        mv.addObject("fId", sqlvalue);
        return mv;
    }

    //membersearch	관리자 회원검색
    @RequestMapping("/membersearch")
    public ModelAndView membersearch(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("/adminpage/membersearch");

        String flag = request.getParameter("searchmenu");
        String sqlflag = "m_name";
        if(flag.equals("membername")) {
            sqlflag = "m_name";
        }
        else if(flag.equals("memberid")) {
            sqlflag = "m_id";
        }
        else if(flag.equals("memberphone")) {
            sqlflag = "m_phone";
        }

        String sqlvalue = request.getParameter("txtSearch");
        Map<String,Object> sqlflagmap = new HashMap<String,Object>();
        sqlflagmap.put("sqlflag", sqlflag);
        sqlflagmap.put("sqlvalue", sqlvalue);
        List<MemberDTO> userload = adService.memberList(sqlflagmap);
        System.out.println(userload);
        mv.addObject("list", userload);

        return mv;
    }
}
