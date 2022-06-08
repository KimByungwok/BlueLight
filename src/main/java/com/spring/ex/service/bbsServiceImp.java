package com.spring.ex.service;


import com.spring.ex.dao.bbsDAO;
import com.spring.ex.dto.bbsDTO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class bbsServiceImp implements bbsService {
    @Inject
    bbsDAO bbsDAO;

    @Override
    public int bbsthreadIDService() {
        System.out.println("bbsservice");

        return bbsDAO.bbsthreadIDService();
    }

    @Override
    public int insertBBSService(bbsDTO bbsdto){
        bbsdto.setM_bId(Integer.toString(bbsDAO.GetNext()));    //여기서 DAO를 호출해 bbsID값을 받게 한 후, 아래의 write함수를 실행합니다.

        return bbsDAO.insertBBSService(bbsdto);
    }

    @Override
    public List<bbsDTO> bbsList(String i){
        return bbsDAO.bbsList(i);
    }

    @Override
    public List<bbsDTO> viewBBS(String i){
        return bbsDAO.viewBBS(i);
    }

    @Override
    public int hitBBS(String i){
        return bbsDAO.hitBBS(i);
    }
}
