package com.spring.ex.dao;

import com.spring.ex.dto.DonationDTO;
import com.spring.ex.dto.bbsDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;
import java.util.Map;

@Repository
public class DonationDAOImp implements DonationDAO{

    @Inject
    SqlSession sqlSession;

    @Override
    public int donethreadIDService() {
        System.out.println("donedao");
        return sqlSession.selectOne("done.threadID");
    }

    @Override
    public int insertDonationService(DonationDTO doneDTO) {
        System.out.println("dao"+doneDTO.getM_dId());

        return sqlSession.insert("done.insertDonation", doneDTO);
    }
    @Override
    public List<DonationDTO> DonationList(Map<String,Object> groupmap){
        return sqlSession.selectList("done.listDonation", groupmap);
    }
    @Override
    public List<DonationDTO> viewBBS(String i){

        return sqlSession.selectList("done.viewBBS" , i);
    }

    @Override
    public int hitBBS(String i){

        return sqlSession.update("done.hitBBS", i);
    }


}
