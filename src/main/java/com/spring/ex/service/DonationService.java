package com.spring.ex.service;

import com.spring.ex.dto.DonationDTO;
import com.spring.ex.dto.bbsDTO;

import java.util.List;
import java.util.Map;

public interface DonationService {
    public int donethreadIDService();

    public int insertDonationService(DonationDTO doneDTO);

    public List<DonationDTO> DonationList(Map<String,Object> groupmap);

    public List<DonationDTO> viewBBS(String i);

    public int hitBBS(String i);


}
