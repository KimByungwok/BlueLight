package com.spring.ex.service;

import com.spring.ex.dto.MemberDTO;
import com.spring.ex.dto.bbsDTO;
import org.springframework.stereotype.Repository;

import java.util.List;

//@Repository
public interface MemberService {
    public int insertMember(MemberDTO dto);
    public int testMember(MemberDTO dto);
    public List<MemberDTO> memberList();

    public int checkID(MemberDTO dto);

    public int loginService(MemberDTO dto);

    public String adminflagService(MemberDTO dto);

    public List<MemberDTO> memberView(String i);

    public String findIDService(MemberDTO dto);

    public Integer newPWService(MemberDTO dto);

    public String newPW_check_Service(MemberDTO dto);
}

