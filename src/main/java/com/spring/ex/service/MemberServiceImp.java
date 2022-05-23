package com.spring.ex.service;

import com.spring.ex.dao.MemberDAO;
import com.spring.ex.dto.MemberDTO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;
@Service
public class MemberServiceImp implements MemberService {
    @Inject
    MemberDAO memberDAO;
    @Override
    public int testMember(MemberDTO dto) {
        System.out.println("te" + dto);
        return memberDAO.test(dto);
    }

    @Override
    public int insertMember(MemberDTO dto) {
        return memberDAO.test(dto);
    }
    @Override
    public List<MemberDTO> memberList() {
        return memberDAO.memberList();
    }
}
