package com.neusoft.bsp.controller;

import com.alibaba.fastjson.JSON;
import com.neusoft.bsp.common.base.BaseModelJson;
import com.neusoft.bsp.common.base.BaseModelJson1;
import com.neusoft.bsp.order.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
public class OrderController {
    @Autowired
    OrderService orderService;

    @PostMapping("/getAwaitingOrder")
    public String getAwaitingOrder(@RequestBody Map<String,String> param){
        int code = 200;
        String DSR_ID = param.get("dsr_ID");
        String STORE_NAME = param.get("str_Name");
        String STR_ID = orderService.getSTR_ID(DSR_ID, STORE_NAME);
        List<HashMap> response = new LinkedList<>();
        List<String> res = orderService.getSTO_ID(STR_ID);
        for(String STO_ID:res){
            HashMap<String, Object> responseMap = new HashMap<>();
            if(orderService.getORDER_STS(STO_ID) == 1){
                String SAO_ID = orderService.getSAO_ID(STO_ID);
                String PRO_ID = orderService.getPRO_ID(SAO_ID);
                String PRO_NAME = orderService.getPRO_NAME(PRO_ID);
                responseMap.put("proname", PRO_NAME);
                responseMap.put("proprice", orderService.getSALES_PRICE(STO_ID));
                responseMap.put("prosku", orderService.getSKU_NO(STO_ID));
                responseMap.put("proorderID", SAO_ID);
                responseMap.put("prototal", orderService.getPRODUCT_AMOUNT(STO_ID));
                responseMap.put("pronumber", orderService.getQTY(STO_ID));
                response.add(responseMap);
            }

        }
        return JSON.toJSONString(new BaseModelJson1<>(code,response));
    }

    @PostMapping("/getAwaitingShipmentOrder")
    public String getAwaitingShipmentOrder(@RequestBody Map<String,String> param){
        int code = 200;
        String DSR_ID = param.get("dsr_ID");
        String STORE_NAME = param.get("str_Name");
        String STR_ID = orderService.getSTR_ID(DSR_ID, STORE_NAME);
        List<HashMap> response = new LinkedList<>();
        List<String> res = orderService.getSTO_ID(STR_ID);
        for(String STO_ID:res){
            HashMap<String, Object> responseMap = new HashMap<>();
            if(orderService.getORDER_STS(STO_ID) == 2){
                String SAO_ID = orderService.getSAO_ID(STO_ID);
                String PRO_ID = orderService.getPRO_ID(SAO_ID);
                String PRO_NAME = orderService.getPRO_NAME(PRO_ID);
                responseMap.put("proname", PRO_NAME);
                responseMap.put("proprice", orderService.getSALES_PRICE(STO_ID));
                responseMap.put("prosku", orderService.getSKU_NO(STO_ID));
                responseMap.put("proorderID", SAO_ID);
                responseMap.put("prototal", orderService.getPRODUCT_AMOUNT(STO_ID));
                responseMap.put("pronumber", orderService.getQTY(STO_ID));
                response.add(responseMap);
            }

        }
        return JSON.toJSONString(new BaseModelJson1<>(code,response));
    }

    @PostMapping("/getShippedOrder")
    public String getShippedOrder(@RequestBody Map<String,String> param){
        int code = 200;
        String DSR_ID = param.get("dsr_ID");
        String STORE_NAME = param.get("str_Name");
        String STR_ID = orderService.getSTR_ID(DSR_ID, STORE_NAME);
        List<HashMap> response = new LinkedList<>();
        List<String> res = orderService.getSTO_ID(STR_ID);
        for(String STO_ID:res){
            HashMap<String, Object> responseMap = new HashMap<>();
            if(orderService.getORDER_STS(STO_ID) == 3){
                String SAO_ID = orderService.getSAO_ID(STO_ID);
                String PRO_ID = orderService.getPRO_ID(SAO_ID);
                String PRO_NAME = orderService.getPRO_NAME(PRO_ID);
                responseMap.put("proname", PRO_NAME);
                responseMap.put("proprice", orderService.getSALES_PRICE(STO_ID));
                responseMap.put("prosku", orderService.getSKU_NO(STO_ID));
                responseMap.put("proorderID", SAO_ID);
                responseMap.put("prototal", orderService.getPRODUCT_AMOUNT(STO_ID));
                responseMap.put("pronumber", orderService.getQTY(STO_ID));
                response.add(responseMap);
            }

        }
        return JSON.toJSONString(new BaseModelJson1<>(code,response));
    }

    @PostMapping("/getCompleteOrder")
    public String getCompleteOrder(@RequestBody Map<String,String> param){
        int code = 200;
        String DSR_ID = param.get("dsr_ID");
        String STORE_NAME = param.get("str_Name");
        String STR_ID = orderService.getSTR_ID(DSR_ID, STORE_NAME);
        List<HashMap> response = new LinkedList<>();
        List<String> res = orderService.getSTO_ID(STR_ID);
        for(String STO_ID:res){
            HashMap<String, Object> responseMap = new HashMap<>();
            if(orderService.getORDER_STS(STO_ID) == 4){
                String SAO_ID = orderService.getSAO_ID(STO_ID);
                String PRO_ID = orderService.getPRO_ID(SAO_ID);
                String PRO_NAME = orderService.getPRO_NAME(PRO_ID);
                responseMap.put("proname", PRO_NAME);
                responseMap.put("proprice", orderService.getSALES_PRICE(STO_ID));
                responseMap.put("prosku", orderService.getSKU_NO(STO_ID));
                responseMap.put("proorderID", SAO_ID);
                responseMap.put("prototal", orderService.getPRODUCT_AMOUNT(STO_ID));
                responseMap.put("pronumber", orderService.getQTY(STO_ID));
                response.add(responseMap);
            }

        }
        return JSON.toJSONString(new BaseModelJson1<>(code,response));
    }

    @PostMapping("/getCanceledOrder")
    public String getCanceledOrder(@RequestBody Map<String,String> param){
        int code = 200;
        String DSR_ID = param.get("dsr_ID");
        String STORE_NAME = param.get("str_Name");
        String STR_ID = orderService.getSTR_ID(DSR_ID, STORE_NAME);
        List<HashMap> response = new LinkedList<>();
        List<String> res = orderService.getSTO_ID(STR_ID);
        for(String STO_ID:res){
            HashMap<String, Object> responseMap = new HashMap<>();
            if(orderService.getORDER_STS(STO_ID) == 5){
                String SAO_ID = orderService.getSAO_ID(STO_ID);
                String PRO_ID = orderService.getPRO_ID(SAO_ID);
                String PRO_NAME = orderService.getPRO_NAME(PRO_ID);
                responseMap.put("proname", PRO_NAME);
                responseMap.put("proprice", orderService.getSALES_PRICE(STO_ID));
                responseMap.put("prosku", orderService.getSKU_NO(STO_ID));
                responseMap.put("proorderID", SAO_ID);
                responseMap.put("prototal", orderService.getPRODUCT_AMOUNT(STO_ID));
                responseMap.put("pronumber", orderService.getQTY(STO_ID));
                response.add(responseMap);
            }

        }
        return JSON.toJSONString(new BaseModelJson1<>(code,response));
    }

    @PostMapping("/getOrderDetail")
    public String getOrderDetail(@RequestBody Map<String,String> param){
        int code = 200;
        String SAO_ID = param.get("order_ID");
        List<HashMap> response = new LinkedList<>();
        HashMap<String, Object> responseMap = new HashMap<>();
        responseMap.put("pro_ID", orderService.getPRO_ID(SAO_ID));
        responseMap.put("ship_Number", orderService.getTRACKING_NO(SAO_ID));
        responseMap.put("ship_Company", orderService.getWSP_NAME(SAO_ID));
        response.add(responseMap);
        return JSON.toJSONString(new BaseModelJson1<>(code,response));
    }

    @PostMapping("/getDELIVERY_STS")
    public String getDELIVERY_STS(@RequestBody Map<String,String> param){
        int code = 200;
        String SAO_ID = param.get("order_ID");
        List<HashMap> response = new LinkedList<>();
        HashMap<String, Object> responseMap = new HashMap<>();
        responseMap.put("DELIVERY_STS", orderService.getDELIVERY_STS(SAO_ID));
        response.add(responseMap);
        return JSON.toJSONString(new BaseModelJson1<>(code,response));
    }

    @PostMapping("/getPayDetail")
    public String getPayDetail(@RequestBody Map<String,String> param){
        int code = 200;
        String SAO_ID = param.get("orderID");
        String STO_ID = orderService.getSTO_IDBySAO_ID(SAO_ID);
        List<HashMap> response = new LinkedList<>();
        HashMap<String, Object> responseMap = new HashMap<>();
        responseMap.put("orReceiver", orderService.getFAMILY_NAME(STO_ID) + orderService.getGIVEN_NAME(STO_ID));
        responseMap.put("orAddress", orderService.getADDRESS_LINE1(STO_ID) + orderService.getADDRESS_LINE2(STO_ID) +orderService.getADDRESS_LINE3(STO_ID));
        responseMap.put("orState", orderService.getSTATE_OR_PROVINCE_NAME(STO_ID));
        responseMap.put("orCity", orderService.getCITY_NAME(STO_ID));
        responseMap.put("orPhone", orderService.getCONTACT_PHONE_NO(STO_ID));
        responseMap.put("orPostCode", orderService.getPOSTAL_CD(STO_ID));
        responseMap.put("orShipfee", orderService.getFREIGHT_COST(SAO_ID));
        response.add(responseMap);
        return JSON.toJSONString(new BaseModelJson1<>(code,response));
    }

    @PostMapping("/pay")
    public String pay(@RequestBody Map<String,String> param){
        int code = -1;
        String DSR_ID = param.get("dsr_ID");
        String ACCOUNTNAME = orderService.getUSERNAME(DSR_ID);
        String PASSWORD = param.get("password");
        if(orderService.getPASSWORD(ACCOUNTNAME).equals(PASSWORD)){
            String SAO_ID = param.get("orderID");
            String BUYER_ID = orderService.getBUYER_ID(ACCOUNTNAME);
            int ORDER_AMOUNT =  orderService.getORDER_AMOUNT(SAO_ID);
            int AVAILABLE_MONEY = orderService.getAVAILABLE_MONEY(BUYER_ID);
            if(ORDER_AMOUNT <= AVAILABLE_MONEY){
                AVAILABLE_MONEY = AVAILABLE_MONEY - ORDER_AMOUNT;
                String newMoney = String.valueOf(AVAILABLE_MONEY);
                orderService.updateAVAILABLE_MONEY(newMoney, BUYER_ID);
                orderService.updateORDER_STS(SAO_ID);
                code = 200;
            }
        }
        List<HashMap> response = new LinkedList<>();
        HashMap<String, Object> responseMap = new HashMap<>();
        response.add(responseMap);
        return JSON.toJSONString(new BaseModelJson1<>(code,response));
    }
}
