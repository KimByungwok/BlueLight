package com.spring.ex.dao;

import com.spring.ex.dto.MemberDTO;
import java.util.List;

public interface MemberDAO {
    public List<MemberDTO> memberList();

    public int test(MemberDTO dto);
    public void insertMember(MemberDTO dto);
}
