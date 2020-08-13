package com.neusoft.bsp.controller;

import com.alibaba.fastjson.JSON;
import com.neusoft.bsp.common.base.BaseModelJson;
import com.neusoft.bsp.common.base.BaseModelJson1;
import com.neusoft.bsp.store.entity.Store;
import com.neusoft.bsp.store.service.StoreService;
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
public class StoreController {
    @Autowired
    StoreService storeService;

    @PostMapping("/getEbayStore")
    public String getEbayStore(@RequestBody Map<String,String> param){
        int code = 200;
        String DSR_ID = param.get("dsrID");
        //System.out.println("DSRID: " + DSR_ID);
        List<HashMap> response = new LinkedList<>();
        List<String> res = storeService.getEbayStore(DSR_ID);
        for(String resi:res){
            HashMap<String, Object> responseMap = new HashMap<>();
            responseMap.put("eba", resi);
            responseMap.put("STR_ID", storeService.getEbayStoreID(resi));
            response.add(responseMap);
        }
        return JSON.toJSONString(new BaseModelJson1<>(code,response));
    }

    @PostMapping("/getAmazonStore")
    public String getAmazonStore(@RequestBody Map<String,String> param){
        int code = 200;
        String DSR_ID = param.get("dsrID");
        List<HashMap> response = new LinkedList<>();
        List<String> res = storeService.getAmazonStore(DSR_ID);
        for(String resi:res){
            HashMap<String, Object> responseMap = new HashMap<>();
            responseMap.put("ama", resi);
            responseMap.put("STR_ID", storeService.getAmazonStoreID(resi));
            response.add(responseMap);
        }
        return JSON.toJSONString(new BaseModelJson1<>(code,response));
    }

    @PostMapping("/addStore")
    public String addStore(@RequestBody Map<String,String> param){
        int code = 200;
        String STORE_NAME = param.get("store_Name");
        String DSR_ID = param.get("dsr_ID");
        String PLATAEFORM_TYPE = param.get("website_Name");
        Store store = new Store(DSR_ID, PLATAEFORM_TYPE, STORE_NAME);
        storeService.addNewStore(store);
        List<HashMap> response = new LinkedList<>();
        HashMap<String, Object> responseMap = new HashMap<>();
        response.add(responseMap);
        return JSON.toJSONString(new BaseModelJson1<>(code,response));
    }
}
