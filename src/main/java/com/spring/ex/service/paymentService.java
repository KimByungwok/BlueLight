package com.spring.ex.service;

import com.spring.ex.dto.MemberDTO;
import com.spring.ex.dto.paymentDTO;

import java.util.List;

//@Repository
public interface paymentService {

    public List<paymentDTO> paymentView(String i);

    public int insertPay(paymentDTO pDTO);

}

