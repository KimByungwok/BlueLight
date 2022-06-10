package com.spring.ex.dao;

import com.spring.ex.dto.DonationDTO;
import com.spring.ex.dto.bbsDTO;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;


public interface DonationDAO {
    public int donethreadIDService();

    public int insertDonationService(DonationDTO doneDTO);

    public List<DonationDTO> DonationList(Map<String,Object> groupmap);

    public List<DonationDTO> viewBBS(String i);

    public int hitBBS(String i);


}
