package com.spring.ex.dao;

import com.spring.ex.dto.MemberDTO;
import com.spring.ex.dto.paymentDTO;

import java.util.List;

public interface paymentDAO {
    public List<paymentDTO> paymentView(String i);

    public int insertPay(paymentDTO pDTO);

    public List<paymentDTO> load_payment_service();

}
