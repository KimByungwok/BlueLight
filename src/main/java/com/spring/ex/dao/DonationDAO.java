package com.spring.ex.dao;

import com.spring.ex.dto.DonationDTO;
import org.springframework.stereotype.Repository;


public interface DonationDAO {
    public int donethreadIDService();

    public int insertDonationService(DonationDTO doneDTO);

}
