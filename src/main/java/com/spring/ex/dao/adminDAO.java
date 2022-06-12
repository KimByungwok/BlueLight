package com.spring.ex.dao;


import com.spring.ex.dto.MemberDTO;
import com.spring.ex.dto.bbsDTO;

import java.util.List;
import java.util.Map;

public interface adminDAO {
    public List<MemberDTO> memberList(Map<String,Object> sqlflagmap);

    public int updateMember(MemberDTO mDTO);
//    public int bbsthreadIDService();
//    public int insertBBSService(bbsDTO bbsdto);
//
//    public int GetNext();
//
//    public List<bbsDTO> bbsList(String i);
//    public List<bbsDTO> viewBBS(String i);
//
//    public int hitBBS(String i);
}
