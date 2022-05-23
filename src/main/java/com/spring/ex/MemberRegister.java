package com.spring.ex;

import com.spring.ex.dao.MemberDAO;
import com.spring.ex.dto.MemberDTO;
import org.springframework.ui.Model;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

public class MemberRegister  {

    @Inject
    public MemberDAO dao;

    public MemberRegister(HttpServletRequest request, Model model) {



        MemberDTO dto = new MemberDTO();
        //Map<String, Object> map =model.asMap();
        //request = (HttpServletRequest)map.get("request");


    }
}
