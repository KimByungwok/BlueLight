package com.spring.ex.service;

import com.spring.ex.dao.MemberDAO;
import com.spring.ex.dto.MemberDTO;
import com.spring.ex.dto.bbsDTO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;
@Service
public class MemberServiceImp implements MemberService {
    @Inject
    MemberDAO memberDAO;

    @Override
    public List<MemberDTO> memberView(String i){
        return memberDAO.memberView(i);
    }
    @Override
    public int testMember(MemberDTO dto) {
        System.out.println("te" + dto);
        return memberDAO.test(dto);
    }

    @Override
    public int insertMember(MemberDTO dto) {
        return memberDAO.insertMember(dto);
    }
    @Override
    public List<MemberDTO> memberList() {
        return memberDAO.memberList();
    }

    @Override
    public int checkID(MemberDTO dto)
    {
        System.out.println("service");
        int result = memberDAO.checkID(dto);
        System.out.println(result);
        return result;
    }

    @Override
    public int loginService(MemberDTO dto)
    {
        int result = memberDAO.loginService(dto);
        return result;
    }

    @Override
    public String adminflagService(MemberDTO dto)
    {
        System.out.println("service"+dto);
        return memberDAO.adminflagService(dto);
    }

    @Override
    public List<MemberDTO> call_name_Service (String i){
        System.out.println(i);
        return memberDAO.call_name_Service(i);
    }

}
