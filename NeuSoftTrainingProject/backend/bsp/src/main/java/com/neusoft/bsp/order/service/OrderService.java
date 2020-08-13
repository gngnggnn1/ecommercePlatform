package com.neusoft.bsp.order.service;

import java.util.List;

public interface OrderService {
    String getSTR_ID(String DSR_ID, String STORE_NAME);
    List<String> getSTO_ID(String STR_ID);//许多订单
    String getSAO_ID(String STO_ID);
    String getPRO_ID(String SAO_ID);
    String getPRO_NAME(String PRO_ID);
    String getSKU_NO(String STO_ID);
    String getSALES_PRICE(String STO_ID);
    String getQTY(String STO_ID);
    String getTRACKING_NO(String SAO_ID);
    String getWSP_NAME(String SAO_ID);
    String getPRODUCT_AMOUNT(String STO_ID);
    int getORDER_STS(String STO_ID);
    String getDELIVERY_STS(String SAO_ID);
    String getFREIGHT_COST(String SAO_ID);
    String getSTO_IDBySAO_ID(String SAO_ID);
    String getFAMILY_NAME(String STO_ID);
    String getGIVEN_NAME(String STO_ID);
    String getSTATE_OR_PROVINCE_NAME(String STO_ID);
    String getCITY_NAME(String STO_ID);
    String getCONTACT_PHONE_NO(String STO_ID);
    String getEMAIL(String STO_ID);
    String getADDRESS_LINE1(String STO_ID);
    String getADDRESS_LINE2(String STO_ID);
    String getADDRESS_LINE3(String STO_ID);
    String getPOSTAL_CD(String STO_ID);
    String getUSERNAME(String MAN_BUYER_ID);
    String getPASSWORD(String ACCOUNT_NAME);
    void updateORDER_STS(String SAO_ID);
    int getORDER_AMOUNT(String SAO_ID);
    String getBUYER_ID(String ACCOUNT_NAME);
    int getAVAILABLE_MONEY(String BUYER_ID);
    void updateAVAILABLE_MONEY(String newMoney, String BUYER_ID);
}
