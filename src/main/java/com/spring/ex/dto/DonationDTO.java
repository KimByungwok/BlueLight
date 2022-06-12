package com.spring.ex.dto;

import java.sql.Timestamp;

public class DonationDTO {

    String m_dId;


    String m_dUserId;
    String m_dTitle;
    String m_dContent;
    Timestamp m_ddayStart;
    Timestamp m_ddayEnd;
    Timestamp m_dDate;
    String m_dHit;
    String m_dGroup;
    public String getM_dId() {
        return m_dId;
    }

    public void setM_dId(String m_dId) {
        this.m_dId = m_dId;
    }

    public String getM_dUserId() {
        return m_dUserId;
    }

    public void setM_dUserId(String m_dUserId) {
        this.m_dUserId = m_dUserId;
    }

    public String getM_dTitle() {
        return m_dTitle;
    }

    public void setM_dTitle(String m_dTitle) {
        this.m_dTitle = m_dTitle;
    }

    public String getM_dContent() {
        return m_dContent;
    }

    public void setM_dContent(String m_dContent) {
        this.m_dContent = m_dContent;
    }

    public Timestamp getM_ddayStart() {
        return m_ddayStart;
    }

    public void setM_ddayStart(Timestamp m_ddayStart) {
        this.m_ddayStart = m_ddayStart;
    }

    public Timestamp getM_ddayEnd() {
        return m_ddayEnd;
    }

    public void setM_ddayEnd(Timestamp m_ddayEnd) {
        this.m_ddayEnd = m_ddayEnd;
    }

    public Timestamp getM_dDate() {
        return m_dDate;
    }

    public void setM_dDate(Timestamp m_dDate) {
        this.m_dDate = m_dDate;
    }

    public String getM_dHit() {
        return m_dHit;
    }

    public void setM_dHit(String m_dHit) {
        this.m_dHit = m_dHit;
    }

    public String getM_dGroup() {
        return m_dGroup;
    }

    public void setM_dGroup(String m_dGroup) {
        this.m_dGroup = m_dGroup;
    }

}
