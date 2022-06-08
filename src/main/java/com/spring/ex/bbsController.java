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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
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
import java.sql.Timestamp;
import java.text.DateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

@Controller
public class bbsController {

    @Inject
    bbsService bService;

    //글보기
    @RequestMapping("bbsView")
    public ModelAndView bbsView(HttpServletRequest request) {
        String bid = request.getParameter("bId");
        System.out.println(bid);
        ModelAndView mv = new ModelAndView("bbsView");
        List<bbsDTO> bbsDTO = bService.viewBBS(bid);
        bService.hitBBS(bid);//조회수카운트업
        System.out.println(bbsDTO);
        mv.addObject("data", bbsDTO);
        mv.addObject("bId", bid);
        return mv;
    }
    //글쓰기버튼
    @RequestMapping("bbswrite")
    public String bbsWrite(HttpServletRequest request)
    {
        HttpSession session = request.getSession();

        session.setAttribute("bbsID", bService.bbsthreadIDService());
        return "bbswrite";
    }
    //글작성처리
    @RequestMapping("bbsWriteOK")
    public String bbsWriteOK(MultipartHttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession();

        System.out.println(request);

        bbsDTO bbs = new bbsDTO();
        String bbsTitle = request.getParameter("bbs_title");
        String bbsContent = request.getParameter("bbs_thread");
        String bbsID = Integer.toString(Integer.parseInt(request.getParameter("bbsID"))+1);
        String User_ID = request.getParameter("id");
        String bbs_Group = request.getParameter("bd");
        System.out.println(bbsTitle+bbsContent+bbsID);


        Timestamp timestamp = new Timestamp(System.currentTimeMillis());

        bbs.setM_bId(bbsID);
        bbs.setM_bTitle(bbsTitle);
        bbs.setM_bContent(bbsContent);
        bbs.setM_bName(User_ID);
        bbs.setM_bGroup(bbs_Group);
        bbs.setM_bHit("0");
        bbs.setM_bDate(timestamp);

        String root = request.getSession().getServletContext().getRealPath("/");
        String path = root + "resources/bbsUploadImg/"+bbsID;

        File dir = new File(path);
        if (!dir.isDirectory()) {
            dir.mkdir();
        }

        Iterator<String> files = request.getFileNames();

        if(files.hasNext()) {
            String uploadFile = files.next();
            MultipartFile mFile = request.getFile(uploadFile);
            String fileName = bbsID;
            String file_save_path = path;
            try {
                mFile.transferTo(new File(file_save_path+"\\"+fileName));
            }catch(Exception e) {
                e.printStackTrace();
            }
        }

        bService.insertBBSService(bbs);

        return "redirect:/"+bbs_Group;
    }

    //공지사항, 후원일정
        @RequestMapping(value={"notice", "sponsorschedule"})
    public ModelAndView notice(HttpServletRequest request) throws Exception {
        //HttpSession session = request.getSession();

        String group = request.getRequestURI();
        group = group.substring(1);//슬래시 제거

        System.out.println(group);

        ModelAndView mv = new ModelAndView(group);
        List<bbsDTO> bbsDTO = bService.bbsList(group);
        System.out.println((int)bbsDTO.size());

            mv.addObject("list", bbsDTO);
        mv.addObject("bbsCount", (int)bbsDTO.size());

        return mv;
    }


}
