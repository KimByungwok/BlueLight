package com.spring.ex.service;

import com.spring.ex.dto.bbsDTO;

import java.util.List;

//@Repository
public interface bbsService {
    public int bbsthreadIDService();

    public int insertBBSService(bbsDTO bbsdto);

    public List<bbsDTO> bbsList(String i);
    public List<bbsDTO> viewBBS(String i);

    public int hitBBS(String i);



    }

