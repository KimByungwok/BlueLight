package com.spring.ex.dao;

import com.spring.ex.dto.MemberDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;

@Repository
public class MemberDAOImp implements MemberDAO{
    @Inject
    SqlSession sqlSession;

    @Override
    public List<MemberDTO> memberList() {
        return sqlSession.selectList("member.memberList");
    }
    @Override
    public int test(MemberDTO dto) {
        return sqlSession.insert("member.insertMember", dto);

    }
    @Override
    public int insertMember(MemberDTO dto) {
        return sqlSession.insert("member.insertMember", dto);
    }
    @Override
    public int checkID(MemberDTO dto) {
        System.out.println("dao");

        int result = sqlSession.selectOne("member.checkID", dto);
        System.out.println(result);
        return result;
    }

    @Override
    public int loginService(MemberDTO dto) {
        int result = sqlSession.selectOne("member.loginService", dto);
        return result;
    }

    @Override
        public String adminflagService(MemberDTO dto) {
        System.out.println("dao"+dto);

        return sqlSession.selectOne("member.admin_flag_Service", dto);

    }
}
