package com.spring.ex;

import com.spring.ex.dto.DonationDTO;
import com.spring.ex.dto.MemberDTO;
import com.spring.ex.dto.bbsDTO;
import com.spring.ex.dto.paymentDTO;
import com.spring.ex.service.DonationService;
import com.spring.ex.service.MemberService;
import com.spring.ex.service.paymentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.lang.reflect.Member;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.time.LocalDateTime;
import java.util.*;

@Controller
public class donationController {
    @Inject
    DonationService doneService;
    @Inject
    MemberService memberService;
    @Inject
    paymentService paymentService;


    //후원하기 리스트 현장 기부 리스트
    @RequestMapping(value={"donation", "livedonation"})
    public ModelAndView donation(HttpServletRequest request) throws Exception {
        //HttpSession session = request.getSession();

        String group = request.getRequestURI();
        String group2 = null;
        System.out.println(group);
        group = group.substring(1);//슬래시 제거

        System.out.println(group);
        ModelAndView mv = new ModelAndView(group);
        if(group.equals("donation")) {
            group = "종합기부";
            group2 = "일반기부";
        }
        if(group.equals("livedonation")) {
            group = "현장기부";
            group2 = null;
        }

        Map<String,Object> groupmap = new HashMap<String,Object>();
        groupmap.put("group", group);
        groupmap.put("group2", group2);
        List<DonationDTO> doneDTO = doneService.DonationList(groupmap);
        System.out.println((int) doneDTO.size());

        mv.addObject("list", doneDTO);
        mv.addObject("doneCount", (int) doneDTO.size());


        return mv;
    }
    //기부글쓰기
    @RequestMapping("donationWrite")
    public String donationWrite(HttpServletRequest request) {

        HttpSession session = request.getSession();

        session.setAttribute("doneID", doneService.donethreadIDService());

        return "donationWrite";
    }

    //기부글쓰기완료 로직
    @RequestMapping("donationWriteOK")
    public String donationWriteOK(MultipartHttpServletRequest request, HttpServletResponse response) throws Exception {
            HttpSession session = request.getSession();

            System.out.println(request);

            DonationDTO done = new DonationDTO();
            String doneTitle = request.getParameter("done_title");
            String doneContent = request.getParameter("done_thread");
            String doneID = Integer.toString(Integer.parseInt(request.getParameter("doneID"))+1);
            String User_ID = request.getParameter("id");
            String done_Group = request.getParameter("done_Group");
;
            System.out.println(doneID);
            System.out.println(doneTitle+doneContent+doneID);

            String tempdoneDayStart = request.getParameter("doneDayStart") + " 00:00:00";
            String tempdoneDayEnd = request.getParameter("doneDayEnd") + " 00:00:00";
            Timestamp doneDayStart = Timestamp.valueOf(tempdoneDayStart);
            Timestamp doneDayEnd = Timestamp.valueOf(tempdoneDayEnd);

            System.out.println(tempdoneDayStart + tempdoneDayEnd);
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());

            done.setM_dId(doneID);
            done.setM_dTitle(doneTitle);
            done.setM_dContent(doneContent);
            done.setM_dUserId(User_ID);
            done.setM_dGroup(done_Group);
            done.setM_dHit("0");
            done.setM_dDate(timestamp);
            done.setM_ddayStart(doneDayStart);
            done.setM_ddayEnd(doneDayEnd);



        String root = request.getSession().getServletContext().getRealPath("/");
            String path = root + "resources/donationUploadImg/"+doneID;

            File dir = new File(path);
            if (!dir.isDirectory()) {
                dir.mkdir();
            }

            Iterator<String> files = request.getFileNames();

            if(files.hasNext()) {
                String uploadFile = files.next();
                MultipartFile mFile = request.getFile(uploadFile);
                String fileName = doneID;
                String file_save_path = path;
                try {
                    mFile.transferTo(new File(file_save_path+"\\"+fileName));
                }catch(Exception e) {
                    e.printStackTrace();
                }
            }

            doneService.insertDonationService(done);

            return "redirect:/donation";
        }

    //후원하기 뷰
    @RequestMapping("/donationView")
    public ModelAndView donationView(HttpServletRequest request) {
        String did = request.getParameter("dId");
        System.out.println(did);
        ModelAndView mv = new ModelAndView("/donationpage/donationView");
        List<DonationDTO> doneDTO = doneService.viewBBS(did);
        doneService.hitBBS(did);//조회수카운트업
        System.out.println(doneDTO);
        mv.addObject("data", doneDTO);
        mv.addObject("dId", did);
        return mv;
    }

    //후원하기1 결제
    @RequestMapping("/donation_payment")
    public ModelAndView donation_payment(HttpServletRequest request) {
        String did = request.getParameter("dId");
        ModelAndView mv = new ModelAndView("/donationpage/donation_payment");
        List<DonationDTO> doneDTO = doneService.viewBBS(did);
        List<MemberDTO> memberDTO = memberService.memberView(did);
        mv.addObject("data", doneDTO);
        mv.addObject("user", memberDTO);
        mv.addObject("dId", did);
        return mv;
    }
    @RequestMapping("donation_OK")
    public String donationOK(HttpServletRequest request) {
        return "0";
    }
    //후원하기 결제 완료
    @RequestMapping("/donation_success")
    public ModelAndView donation_success(HttpServletRequest request) {
        HttpSession session = request.getSession();
        paymentDTO payDTO = new paymentDTO();
        String donationmoney = request.getParameter("donationmoney");
        String did = request.getParameter("dID");
        String userID = (String)session.getAttribute("id");
        System.out.println(userID);
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());

        payDTO.setM_pID(userID);
        payDTO.setM_pbbsID(did);
        payDTO.setM_pDate(timestamp);
        payDTO.setM_pPrice(donationmoney);
        payDTO.setM_pCard_num("1212-1212-1212");
        payDTO.setM_prefund("0");
        payDTO.setM_pPtype("card");

//        m_pId 유저아이디
//        m_pbbsID 글번호
//        m_pDate 기부날짜
//        m_pPrice 기부금액
//        m_pCard_num 카드넘버
//        m_prefund 결제성공유무
//        m_Ptype 기부형식
        paymentService.insertPay(payDTO);
        ModelAndView mv = new ModelAndView("/donationpage/donation_success");
        mv.addObject("payData", payDTO);
        return mv;
    }
    //현장후원하기 결제
    @RequestMapping("/livedonation_payment")
    public ModelAndView livedonation_payment(HttpServletRequest request) {
        String did = request.getParameter("dId");
        ModelAndView mv = new ModelAndView("/donationpage/livedonation_payment");
        List<DonationDTO> doneDTO = doneService.viewBBS(did);
        mv.addObject("data", doneDTO);
        mv.addObject("dId", did);
        return mv;
    }

    @RequestMapping(value = "/insertPay.do")
    @ResponseBody
    public int pay(@RequestBody paymentDTO paydto) {
        System.out.println("글번호 : " + paydto.getM_pbbsID());
        int res = paymentService.insertPay(paydto);
        if(res == 1) {

            if(res == 1)
                System.out.println("성공");
        }

        return res;
    }



    //현장기부 신청 완료
    @RequestMapping("/livedonation_success")
    public String livedonation_success() { return "/donationpage/livedonation_success";}


}
