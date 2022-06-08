package com.spring.ex.dao;

import com.spring.ex.dto.DonationDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
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
        return sqlSession.insert("done.insertDonation", doneDTO);
    }

}
