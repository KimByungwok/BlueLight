package com.spring.ex.dao;


import com.spring.ex.dto.bbsDTO;
import java.util.List;

public interface bbsDAO {
    public int bbsthreadIDService();
    public int insertBBSService(bbsDTO bbsdto);

    public int GetNext();

    public List<bbsDTO> bbsList(String i);
    public List<bbsDTO> viewBBS(String i);

    public int hitBBS(String i);
}
