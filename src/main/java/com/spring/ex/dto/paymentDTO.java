package com.spring.ex.dto;

import java.sql.Timestamp;

public class paymentDTO {


    String m_pID;
    String m_pbbsID;
    Timestamp m_pDate;
    String m_pPrice;
    String m_pCard_num;
    String m_prefund;
    String m_pPtype;

    public String getM_pID() {
        return m_pID;
    }

    public void setM_pID(String m_pID) {
        this.m_pID = m_pID;
    }

    public String getM_pbbsID() {
        return m_pbbsID;
    }

    public void setM_pbbsID(String m_pbbsID) {
        this.m_pbbsID = m_pbbsID;
    }

    public Timestamp getM_pDate() {
        return m_pDate;
    }

    public void setM_pDate(Timestamp m_pDate) {
        this.m_pDate = m_pDate;
    }

    public String getM_pPrice() {
        return m_pPrice;
    }

    public void setM_pPrice(String m_pPrice) {
        this.m_pPrice = m_pPrice;
    }

    public String getM_pCard_num() {
        return m_pCard_num;
    }

    public void setM_pCard_num(String m_pCard_num) {
        this.m_pCard_num = m_pCard_num;
    }

    public String getM_prefund() {
        return m_prefund;
    }

    public void setM_prefund(String m_prefund) {
        this.m_prefund = m_prefund;
    }

    public String getM_pPtype() {
        return m_pPtype;
    }

    public void setM_pPtype(String m_pPtype) {
        this.m_pPtype = m_pPtype;
    }
}
