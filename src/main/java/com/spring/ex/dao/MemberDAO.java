package com.spring.ex.dao;

import com.spring.ex.dto.MemberDTO;
import java.util.List;

public interface MemberDAO {
    public List<MemberDTO> memberList();

    public int test(MemberDTO dto);
    public int insertMember(MemberDTO dto);

    public int checkID(MemberDTO dto);

    public int loginService(MemberDTO dto);

    public List adminflagService(MemberDTO dto);

}
