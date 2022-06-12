package com.spring.ex.dao;

import com.spring.ex.dto.MemberDTO;
import com.spring.ex.dto.bbsDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;
import java.util.Map;

import static java.sql.Types.NULL;

@Repository
public class adminDAOImp implements adminDAO{
    @Inject
    SqlSession sqlSession;

    @Override
    public List<MemberDTO> memberList(Map<String,Object> sqlflagmap) {
        return sqlSession.selectList("admin.memberList", sqlflagmap);
    }

    @Override
    public int updateMember(MemberDTO mDTO) {
        return sqlSession.update("admin.updateMember", mDTO);
    }
//    @Override
//    public int bbsthreadIDService() {
//        System.out.println("bbsdao");
//        return sqlSession.selectOne("bbs.threadID");
//    }
//
//    @Override
//    public int insertBBSService(bbsDTO bbsdto) {
//        return sqlSession.insert("bbs.insertBBS", bbsdto);
//    }
//
//    @Override
//    public int GetNext() {
//        int i = sqlSession.selectOne("bbs.threadID");
//
//        if(i==NULL) {
//            i=1;
//        }else {
//            i+=1;
//        }
//        return i;
//    }
//
//    @Override
//    public List<bbsDTO> bbsList(String i){
//        System.out.println(sqlSession.selectList("bbs.listBBS"));
//        return sqlSession.selectList("bbs.listBBS", i);
//    }
//    @Override
//    public List<bbsDTO> viewBBS(String i){
//        return sqlSession.selectList("bbs.viewBBS" , i);
//    }
//
//    @Override
//    public int hitBBS(String i){
//        return sqlSession.update("bbs.hitBBS", i);
//    }




}
