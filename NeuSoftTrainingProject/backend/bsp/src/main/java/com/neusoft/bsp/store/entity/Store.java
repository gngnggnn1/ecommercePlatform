package com.neusoft.bsp.store.entity;

public class Store {
    String STR_ID;
    String DSR_ID;
    String PLATAEFORM_TYPE;
    String STORE_NAME;
    String STORE_STS_CD;
    String CREATED_BY;
    String CREATION_DATE;
    String LAST_UPDATE_BY;
    String LAST_UPDATE_DATE;

    public Store(String DSR_ID, String PLATAEFORM_TYPE, String STORE_NAME) {
        this.DSR_ID = DSR_ID;
        this.PLATAEFORM_TYPE = PLATAEFORM_TYPE;
        this.STORE_NAME = STORE_NAME;
    }

    public Store(String STR_ID, String DSR_ID, String PLATAEFORM_TYPE, String STORE_NAME, String STORE_STS_CD, String CREATED_BY, String CREATION_DATE, String LAST_UPDATE_BY, String LAST_UPDATE_DATE, String CALL_CNT, String STS_CD, String REMARK) {
        this.STR_ID = STR_ID;
        this.DSR_ID = DSR_ID;
        this.PLATAEFORM_TYPE = PLATAEFORM_TYPE;
        this.STORE_NAME = STORE_NAME;
        this.STORE_STS_CD = STORE_STS_CD;
        this.CREATED_BY = CREATED_BY;
        this.CREATION_DATE = CREATION_DATE;
        this.LAST_UPDATE_BY = LAST_UPDATE_BY;
        this.LAST_UPDATE_DATE = LAST_UPDATE_DATE;
        this.CALL_CNT = CALL_CNT;
        this.STS_CD = STS_CD;
        this.REMARK = REMARK;
    }

    String CALL_CNT;
    String STS_CD;

    public String getSTR_ID() {
        return STR_ID;
    }

    public void setSTR_ID(String STR_ID) {
        this.STR_ID = STR_ID;
    }

    public String getDSR_ID() {
        return DSR_ID;
    }

    public void setDSR_ID(String DSR_ID) {
        this.DSR_ID = DSR_ID;
    }

    public String getPLATAEFORM_TYPE() {
        return PLATAEFORM_TYPE;
    }

    public void setPLATAEFORM_TYPE(String PLATAEFORM_TYPE) {
        this.PLATAEFORM_TYPE = PLATAEFORM_TYPE;
    }

    public String getSTORE_NAME() {
        return STORE_NAME;
    }

    public void setSTORE_NAME(String STORE_NAME) {
        this.STORE_NAME = STORE_NAME;
    }

    public String getSTORE_STS_CD() {
        return STORE_STS_CD;
    }

    public void setSTORE_STS_CD(String STORE_STS_CD) {
        this.STORE_STS_CD = STORE_STS_CD;
    }

    public String getCREATED_BY() {
        return CREATED_BY;
    }

    public void setCREATED_BY(String CREATED_BY) {
        this.CREATED_BY = CREATED_BY;
    }

    public String getCREATION_DATE() {
        return CREATION_DATE;
    }

    public void setCREATION_DATE(String CREATION_DATE) {
        this.CREATION_DATE = CREATION_DATE;
    }

    public String getLAST_UPDATE_BY() {
        return LAST_UPDATE_BY;
    }

    public void setLAST_UPDATE_BY(String LAST_UPDATE_BY) {
        this.LAST_UPDATE_BY = LAST_UPDATE_BY;
    }

    public String getLAST_UPDATE_DATE() {
        return LAST_UPDATE_DATE;
    }

    public void setLAST_UPDATE_DATE(String LAST_UPDATE_DATE) {
        this.LAST_UPDATE_DATE = LAST_UPDATE_DATE;
    }

    public String getCALL_CNT() {
        return CALL_CNT;
    }

    public void setCALL_CNT(String CALL_CNT) {
        this.CALL_CNT = CALL_CNT;
    }

    public String getSTS_CD() {
        return STS_CD;
    }

    public void setSTS_CD(String STS_CD) {
        this.STS_CD = STS_CD;
    }

    public String getREMARK() {
        return REMARK;
    }

    public void setREMARK(String REMARK) {
        this.REMARK = REMARK;
    }

    String REMARK;

}
