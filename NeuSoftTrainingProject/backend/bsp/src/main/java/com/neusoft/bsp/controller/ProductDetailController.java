package com.neusoft.bsp.controller;

import com.alibaba.fastjson.JSON;
import com.neusoft.bsp.common.base.BaseModelJson;
import com.neusoft.bsp.common.base.BaseModelJson1;
import com.neusoft.bsp.productDetail.service.ProductDetailService;
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
public class ProductDetailController {
    @Autowired
    ProductDetailService productDetailService;

    @PostMapping("/getProductDetail")
    public String getProductDetail(@RequestBody Map<String,String> param){
        int code = 200;
        String title = param.get("pro_Name");
        String PRO_ID = productDetailService.getProductID(title);
        List<HashMap> response = new LinkedList<>();
        HashMap<String, Object> responseMap = new HashMap<>();
        responseMap.put("imgSrc", productDetailService.getProductImgUrl(PRO_ID));
        responseMap.put("price", productDetailService.getProductPrice(title));
        responseMap.put("sku", productDetailService.getProductSku(title));
        responseMap.put("brand", productDetailService.getProductBrandName(productDetailService.getProductBrandID(title)));
        responseMap.put("description", productDetailService.getProductDescription(PRO_ID));
        response.add(responseMap);
        return JSON.toJSONString(new BaseModelJson1<>(code,response));
    }

    @PostMapping("/addToWishList")
    public String addToWishList(@RequestBody Map<String,String> param){
        int code = 200;
        String DSR_ID = param.get("dsr_ID");
        String PRO_ID = productDetailService.getProductID(param.get("pro_Name"));
        if(productDetailService.checkWishList(DSR_ID, PRO_ID) <= 0){
            productDetailService.addToWishList(DSR_ID, PRO_ID);
            code = 200;
        }
        List<HashMap> response = new LinkedList<>();
        HashMap<String, Object> responseMap = new HashMap<>();
        response.add(responseMap);
        return JSON.toJSONString(new BaseModelJson1<>(code,response));
    }

    @PostMapping("/addToStore")
    public String addToStore(@RequestBody Map<String,String> param){
        int code = 200;
        String STR_ID = param.get("str_ID");
        String TITLE = param.get("pro_Name");
        String PRO_ID = productDetailService.getProductID(TITLE);
        String RETAIL_PRICE = productDetailService.getProductPrice(TITLE);
        productDetailService.addToStore(STR_ID, PRO_ID, RETAIL_PRICE);
        List<HashMap> response = new LinkedList<>();
        HashMap<String, Object> responseMap = new HashMap<>();
        response.add(responseMap);
        return JSON.toJSONString(new BaseModelJson1<>(code,response));
    }
}
