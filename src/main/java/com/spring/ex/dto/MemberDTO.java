package com.spring.ex.dto;

public class MemberDTO {
    String m_flag = null;
    String m_id = null;

    String m_pw = null;
    String m_name = null;
    String m_phone = null;
    String m_address = null;
    String m_email = null;
    String m_s_number = null;

    public String getM_flag() {
        return m_flag;
    }

    public void setM_flag(String m_flag) {
        this.m_flag = m_flag;
    }

    public String getM_id() {
        return m_id;
    }

    public void setM_id(String m_id) {
        this.m_id = m_id;
    }

    public String getM_pw() {
        return m_pw;
    }

    public void setM_pw(String m_pw) {
        this.m_pw = m_pw;
    }

    public String getM_name() {
        return m_name;
    }

    public void setM_name(String m_name) {
        this.m_name = m_name;
    }

    public String getM_phone() {
        return m_phone;
    }

    public void setM_phone(String m_phone) {
        this.m_phone = m_phone;
    }

    public String getM_address() {
        return m_address;
    }

    public void setM_address(String m_address) {
        this.m_address = m_address;
    }

    public String getM_email() {
        return m_email;
    }

    public void setM_email(String m_email) {
        this.m_email = m_email;
    }

    public String getM_s_number() {
        return m_s_number;
    }

    public void setM_s_number(String m_s_number) {
        this.m_s_number = m_s_number;
    }
    @Override
    public String toString() {
        return "MemberDTO{" +
                "m_flag='" + m_flag + '\'' +
                ", m_id='" + m_id + '\'' +
                ", m_pw='" + m_pw + '\'' +
                ", m_name='" + m_name + '\'' +
                ", m_phone='" + m_phone + '\'' +
                ", m_address='" + m_address + '\'' +
                ", m_email='" + m_email + '\'' +
                ", m_s_number='" + m_s_number + '\'' +
                '}';
    }

}
