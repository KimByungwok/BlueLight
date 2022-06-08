package com.spring.ex;

import com.spring.ex.dto.DonationDTO;
import com.spring.ex.service.DonationService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.sql.Timestamp;
import java.util.Iterator;

@Controller
public class donationController {
    @Inject
    DonationService doneService;

    @RequestMapping("donationWrite")
    public String donationWrite(HttpServletRequest request) {

        HttpSession session = request.getSession();

        session.setAttribute("doneID", doneService.donethreadIDService());
        return "donationWrite";
    }


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
            System.out.println(doneTitle+doneContent+doneID);

//            Timestamp doneDayStart = Timestamp.valueOf(request.getParameter("doneDayStart"));
//            Timestamp doneDayEnd = Timestamp.valueOf(request.getParameter("doneDayEnd"));

            Timestamp timestamp = new Timestamp(System.currentTimeMillis());

            done.setM_dId(doneID);
            done.setM_dTitle(doneTitle);
            done.setM_dContent(doneContent);
            done.setM_dUserId(User_ID);
            done.setM_dGroup(done_Group);
            done.setM_dHit("0");
//            done.setM_dDate(timestamp);
//            done.setM_ddayStart(doneDayStart);
//            done.setM_ddayEnd(doneDayEnd);



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

}
