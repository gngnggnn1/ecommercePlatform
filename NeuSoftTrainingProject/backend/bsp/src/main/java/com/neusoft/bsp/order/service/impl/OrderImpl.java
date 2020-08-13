package com.neusoft.bsp.order.service.impl;

import com.neusoft.bsp.order.mapper.OrderMapper;
import com.neusoft.bsp.order.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("/OrderService")
public class OrderImpl implements OrderService {
    @Autowired
    OrderMapper orderMapper;

    @Override
    public String getSTR_ID(String DSR_ID, String STORE_NAME) {
        return orderMapper.getSTR_ID(DSR_ID, STORE_NAME);
    }

    @Override
    public List<String> getSTO_ID(String STR_ID) {
        return orderMapper.getSTO_ID(STR_ID);
    }

    @Override
    public String getSAO_ID(String STO_ID) {
        return orderMapper.getSAO_ID(STO_ID);
    }

    @Override
    public String getPRO_ID(String SAO_ID) {
        return orderMapper.getPRO_ID(SAO_ID);
    }

    @Override
    public String getPRO_NAME(String PRO_ID) {
        return orderMapper.getPRO_NAME(PRO_ID);
    }

    @Override
    public String getSKU_NO(String STO_ID) {
        return orderMapper.getSKU_NO(STO_ID);
    }

    @Override
    public String getSALES_PRICE(String STO_ID) {
        return orderMapper.getSALES_PRICE(STO_ID);
    }

    @Override
    public String getQTY(String STO_ID) {
        return orderMapper.getQTY(STO_ID);
    }

    @Override
    public String getTRACKING_NO(String SAO_ID) {
        return orderMapper.getTRACKING_NO(SAO_ID);
    }

    @Override
    public String getWSP_NAME(String SAO_ID) {
        return orderMapper.getWSP_NAME(SAO_ID);
    }

    @Override
    public String getPRODUCT_AMOUNT(String STO_ID) {
        return orderMapper.getPRODUCT_AMOUNT(STO_ID);
    }

    @Override
    public int getORDER_STS(String STO_ID) {
        return orderMapper.getORDER_STS(STO_ID);
    }

    @Override
    public String getDELIVERY_STS(String SAO_ID) {
        return orderMapper.getDELIVERY_STS(SAO_ID);
    }

    @Override
    public String getFREIGHT_COST(String SAO_ID) {
        return orderMapper.getFREIGHT_COST(SAO_ID);
    }

    @Override
    public String getSTO_IDBySAO_ID(String SAO_ID) {
        return orderMapper.getSTO_IDBySAO_ID(SAO_ID);
    }

    @Override
    public String getFAMILY_NAME(String STO_ID) {
        return orderMapper.getFAMILY_NAME(STO_ID);
    }

    @Override
    public String getGIVEN_NAME(String STO_ID) {
        return orderMapper.getGIVEN_NAME(STO_ID);
    }

    @Override
    public String getSTATE_OR_PROVINCE_NAME(String STO_ID) {
        return orderMapper.getSTATE_OR_PROVINCE_NAME(STO_ID);
    }

    @Override
    public String getCITY_NAME(String STO_ID) {
        return orderMapper.getCITY_NAME(STO_ID);
    }

    @Override
    public String getCONTACT_PHONE_NO(String STO_ID) {
        return orderMapper.getCONTACT_PHONE_NO(STO_ID);
    }

    @Override
    public String getEMAIL(String STO_ID) {
        return orderMapper.getEMAIL(STO_ID);
    }

    @Override
    public String getADDRESS_LINE1(String STO_ID) {
        return orderMapper.getADDRESS_LINE1(STO_ID);
    }

    @Override
    public String getADDRESS_LINE2(String STO_ID) {
        return orderMapper.getADDRESS_LINE2(STO_ID);
    }

    @Override
    public String getADDRESS_LINE3(String STO_ID) {
        return orderMapper.getADDRESS_LINE3(STO_ID);
    }

    @Override
    public String getPOSTAL_CD(String STO_ID) {
        return orderMapper.getPOSTAL_CD(STO_ID);
    }

    @Override
    public String getUSERNAME(String MAN_BUYER_ID) {
        return orderMapper.getUSERNAME(MAN_BUYER_ID);
    }

    @Override
    public String getPASSWORD(String ACCOUNT_NAME) {
        return orderMapper.getPASSWORD(ACCOUNT_NAME);
    }

    @Override
    public void updateORDER_STS(String SAO_ID) {
        orderMapper.updateORDER_STS(SAO_ID);
    }

    @Override
    public int getORDER_AMOUNT(String SAO_ID) {
        return orderMapper.getORDER_AMOUNT(SAO_ID);
    }

    @Override
    public String getBUYER_ID(String ACCOUNT_NAME) {
        return orderMapper.getBUYER_ID(ACCOUNT_NAME);
    }

    @Override
    public int getAVAILABLE_MONEY(String BUYER_ID) {
        return orderMapper.getAVAILABLE_MONEY(BUYER_ID);
    }

    @Override
    public void updateAVAILABLE_MONEY(String newMoney, String BUYER_ID) {
        orderMapper.updateAVAILABLE_MONEY(newMoney, BUYER_ID);
    }
}
