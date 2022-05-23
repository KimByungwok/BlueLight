package com.spring.ex;

import com.spring.ex.dao.MemberDAO;
import com.spring.ex.dto.MemberDTO;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//@Controller
public class TestDAO {

    //@Inject
    private MemberDAO dao;

    //@RequestMapping(value = "/ex/testDAO", method = RequestMethod.GET)
    public void testDAO() {
        MemberDTO dto = new MemberDTO();
        dto.setM_id("wa");
        dto.setM_pw("A");

        dao.insertMember(dto);
        System.out.println("testDAO 발동");
    }
}
