package com.spring.ex.service;


import com.spring.ex.dao.adminDAO;
import com.spring.ex.dto.MemberDTO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;
import java.util.Map;

@Service
public class adminServiceImp implements adminService {
    @Inject
    adminDAO adminDAO;

    @Override
    public List<MemberDTO> memberList(Map<String,Object> sqlflagmap) {
        return adminDAO.memberList(sqlflagmap);
    }

    @Override
    public int updateMember(MemberDTO mDTO){
        return adminDAO.updateMember(mDTO);
    }

//    @Override
//    public int bbsthreadIDService() {
//        System.out.println("bbsservice");
//
//        return bbsDAO.bbsthreadIDService();
//    }
//
//    @Override
//    public int insertBBSService(bbsDTO bbsdto){
//        bbsdto.setM_bId(Integer.toString(bbsDAO.GetNext()));    //여기서 DAO를 호출해 bbsID값을 받게 한 후, 아래의 write함수를 실행합니다.
//
//        return bbsDAO.insertBBSService(bbsdto);
//    }
//
//    @Override
//    public List<bbsDTO> bbsList(String i){
//        return bbsDAO.bbsList(i);
//    }
//
//    @Override
//    public List<bbsDTO> viewBBS(String i){
//        return bbsDAO.viewBBS(i);
//    }
//
//    @Override
//    public int hitBBS(String i){
//        return bbsDAO.hitBBS(i);
//    }
}
