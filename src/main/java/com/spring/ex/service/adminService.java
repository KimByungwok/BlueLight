package com.spring.ex.service;


import com.spring.ex.dto.MemberDTO;
import com.spring.ex.dto.bbsDTO;

import java.util.List;
import java.util.Map;

//@Repository
public interface adminService {
    public List<MemberDTO> memberList(Map<String,Object> sqlflagmap);
    public int updateMember(MemberDTO mDTO);
//    public int bbsthreadIDService();
//
//    public int insertBBSService(bbsDTO bbsdto);
//
//    public List<bbsDTO> bbsList(String i);
//    public List<bbsDTO> viewBBS(String i);
//
//    public int hitBBS(String i);

    }

