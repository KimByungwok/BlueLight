package com.spring.ex.service;

import com.spring.ex.dao.DonationDAO;
import com.spring.ex.dto.DonationDTO;
import com.spring.ex.dto.bbsDTO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;
import java.util.Map;

@Service
public class DonationServiceImp implements DonationService{

    @Inject
    DonationDAO doneDAO;

    @Override
    public int donethreadIDService() {
        System.out.println("doneservice");

        return doneDAO.donethreadIDService();
    }

    @Override
    public int insertDonationService(DonationDTO doneDTO) {
        System.out.println("service"+doneDTO.getM_dId());
        if(doneDTO.getM_dGroup() == "donation") {
            doneDTO.setM_dGroup("종합기부");
        } else if(doneDTO.getM_dGroup() == "livedonation") {
            doneDTO.setM_dGroup("현장기부");
        }
        return doneDAO.insertDonationService(doneDTO);
    }

    @Override
    public List<DonationDTO> DonationList(Map<String,Object> groupmap) {

        return doneDAO.DonationList(groupmap);
    }
    @Override
    public List<DonationDTO> viewBBS(String i){
        return doneDAO.viewBBS(i);
    }

    @Override
    public int hitBBS(String i){
        return doneDAO.hitBBS(i);
    }

}
