package com.spring.ex.dao;

import com.spring.ex.dto.MemberDTO;
import com.spring.ex.dto.paymentDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;

@Repository
public class paymentDAOImp implements paymentDAO{
    @Inject
    SqlSession sqlSession;

    @Override
    public List<paymentDTO> paymentView(String i)
    {
        return sqlSession.selectList(i);
    }

    @Override
    public int insertPay(paymentDTO pDTO){
        return sqlSession.insert("payment.insertPay", pDTO);
    }

}
