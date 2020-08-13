package com.neusoft.bsp.dropshipper.entity;

public class DropShipper {
    private String DSR_ID;
    private String NAME;
    private String CREATED_BY;
    private String CREATION_DATE;
    private String LAST_UPDATE_BY;
    private String LAST_UPDATE_DATE;
    private String REMARK;
    private String STS_CD;
    private String REGISTER_DATE;

    public DropShipper(String DSR_ID, String NAME, String CREATED_BY, String CREATION_DATE, String LAST_UPDATE_BY, String LAST_UPDATE_DATE, String REMARK, String STS_CD, String REGISTER_DATE) {
        this.DSR_ID = DSR_ID;
        this.NAME = NAME;
        this.CREATED_BY = CREATED_BY;
        this.CREATION_DATE = CREATION_DATE;
        this.LAST_UPDATE_BY = LAST_UPDATE_BY;
        this.LAST_UPDATE_DATE = LAST_UPDATE_DATE;
        this.REMARK = REMARK;
        this.STS_CD = STS_CD;
        this.REGISTER_DATE = REGISTER_DATE;
    }

    public String getDSR_ID() {
        return DSR_ID;
    }

    public void setDSR_ID(String DSR_ID) {
        this.DSR_ID = DSR_ID;
    }

    public String getNAME() {
        return NAME;
    }

    public void setNAME(String NAME) {
        this.NAME = NAME;
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

    public String getREMARK() {
        return REMARK;
    }

    public void setREMARK(String REMARK) {
        this.REMARK = REMARK;
    }

    public String getSTS_CD() {
        return STS_CD;
    }

    public void setSTS_CD(String STS_CD) {
        this.STS_CD = STS_CD;
    }

    public String getREGISTER_DATE() {
        return REGISTER_DATE;
    }

    public void setREGISTER_DATE(String REGISTER_DATE) {
        this.REGISTER_DATE = REGISTER_DATE;
    }
}
