package com.spring.ex;

import com.spring.ex.dao.MemberDAO;
import com.spring.ex.dto.MemberDTO;
import com.spring.ex.service.MemberService;
import org.springframework.ui.Model;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

public class MemberRegister  {

    @Inject
    MemberService mService;

    public MemberRegister(HttpServletRequest request) {







    }
}
