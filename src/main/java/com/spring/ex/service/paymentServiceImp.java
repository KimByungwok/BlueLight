package com.spring.ex.service;

import com.spring.ex.dao.MemberDAO;
import com.spring.ex.dao.paymentDAO;
import com.spring.ex.dto.MemberDTO;
import com.spring.ex.dto.paymentDTO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class paymentServiceImp implements paymentService {
    @Inject
    paymentDAO pDAO;

    @Override
    public List<paymentDTO> paymentView(String i){
        return pDAO.paymentView(i);
    }
    @Override
    public int insertPay(paymentDTO pDTO){
        return pDAO.insertPay(pDTO);
    }

    @Override
    public List<paymentDTO> load_payment_service()
    {
        return pDAO.load_payment_service();
    }
}
