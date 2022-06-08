package com.spring.ex.service;

import com.spring.ex.dao.DonationDAO;
import com.spring.ex.dto.DonationDTO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class DonationServiceImp implements DonationService{

    @Inject
    DonationDAO dDAO;

    @Override
    public int donethreadIDService() {
        System.out.println("doneservice");

        return dDAO.donethreadIDService();
    }

    @Override
    public int insertDonationService(DonationDTO doneDTO) {
        return dDAO.insertDonationService(doneDTO);
    }


}
